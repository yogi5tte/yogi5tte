'use strict'


//버튼 클릭하면 실행
function kakaopaymentReady(event){
	closeModal(event);
	const ob = {
		pg: 'kakaopay.TC0ONETIME',
		pay_method : 'card',
		merchant_uid : 'merchant_' + new Date().getTime(),
		name: '하얏트 서울',
		//결제창에 보여질 이름
		//name: '주문명 : ${auction.a_title}',
		//model에 담을 정보를 넣을 수도 있다.
        amount:'60000',
		//price: ${bid.b_bid},
		//가격
        buyer_email:"testiamport@naver.com",
		buyer_name:'우민철',
        buyer_tel :"010-5094-0854",
		//구매자 이름, 구매자 정보도 model값으로 교체
		buyer_postcode: '123-456',
	}
	
    IMP.init('imp28456871');
		IMP.request_pay(ob, function(rsp){
				console.log(rsp);
				if(rsp.success){
					let msg = '결제가 완료되었습니다.';
					msg += '결제 금액 : ' + rsp.paid_price;
					location.href = cpath + '/rsvn/reservation_approve'
				}else{
					let msg = '결제에 실패하였습니다';
					msg += '에러내용 : ' + rsp.error_msg; 
				}
				alert(msg);
		});
}
