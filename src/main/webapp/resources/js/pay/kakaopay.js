'use strict'





//버튼 클릭하면 실행
async function kakaopaymentReady(event){
   closeModal(event);
   
   const rsvnJSON = await fetch(cpath + '/rsvn/getrsvndto/', {
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
               
               location.href = cpath + '/rsvn/reservation_approve/' + idx +'?name=' + name + '&roomName='+ roomName
   
            }else{
               alert('결제 실패');
               history.back();
            }
         })
         
      });
}