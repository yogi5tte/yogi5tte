'use strict'

//kakaopay API 호출 (결제창만 생성되고, Iamport API 연동 이후 결제 진행)
async function kakaopaymentReady(event){
	closeModal(event);
	
	const rsvnJSON = await fetch(cpath + '/rsvn/getRsvnDto/', {
		method: 'POST',
		body: JSON.stringify({
			room_idx: +document.getElementById('room_idx').innerText,
			userName: document.querySelector('input[name="userName"]').value
		}),
		headers: {
			'Content-Type': 'application/json; charset=utf-8',
		}
	}).then(resp => resp.json()).then(json => json)
	
	console.log(rsvnJSON)

	const ob = {
		pg: 'kakaopay.TC0ONETIME',
		pay_method : 'card',
		merchant_uid : 'merchant_' + new Date().getTime(),
		name: '['+name+']'+roomName,
		//결제창에 보여질 이름
		//name: '주문명 : ${auction.a_title}',
		//model에 담을 정보를 넣을 수도 있다.
        amount: rsvnJSON.total_amount,
		//price: ${bid.b_bid},
		//가격
        buyer_email:"testiamport@naver.com",
		buyer_name: rsvnJSON.userName,
        buyer_tel : rsvnJSON.phoneNumber,
		//구매자 이름, 구매자 정보도 model값으로 교체
		buyer_postcode: '123-456',
	}
	IMP.init('imp28456871');
		 IMP.request_pay(ob, function(rsp){
			console.log(rsp);
			$.ajax({
				type: 'POST',
				url : cpath + '/rsvn/reservation/verifyIamport/' + rsp.imp_uid
			}).done(function(data){
				
				if(rsp.paid_amount == data.response.amount){
					alert('결제 및 결제 검증 완료');
					const idx = rsvnJSON.idx;
					
					//reservation_approve 테이블 데이터 추가
					const approveOb = {
							//name,roomName,check_in,check_out,reservation_idx,user_idx
							name : name,
							roomName : roomName,
							check_in : rsvnJSON.check_in,
							check_out : rsvnJSON.check_out,
							reservation_idx : idx,
							user_idx : user_idx
					}
					let approve_url = cpath + '/rsvn/insertRsvnApprove'
					const approve_opt = {
							method:'POST',
							body : JSON.stringify(approveOb),
							headers:{
								'Content-type': 'application/json;charset=utf-8'
							}
					}
					 fetch(approve_url,approve_opt)
					.then(resp=>rsep.text())
					
					
					let url = cpath + '/rsvn/reservation_approve/' + idx +'?name=' + name + '&roomName='+ roomName
					location.href = url
	
				}else{
					alert('결제 실패');
					history.back();
				}
			})
			
		});
}

