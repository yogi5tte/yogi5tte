<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/header.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/reservation/reservation.css">


</head>
<body>
<script>
let name= '${infoDto.name}'
let roomName = '${roomDto.roomName}'
let check_in = '${param.check_in}'
let check_out = '${param.check_out}'
let quantity = '${param.quantity}'
let total_amount = '${roomDto.price * param.quantity}'
let userName = '${rsvnDto.userName}'
let phoneNumber = '${rsvnDto.phoneNumber}'

</script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="${cpath }/resources/js/reservation/reservation.js"></script>
<script src="${cpath }/resources/js/pay/kakaopay.js"></script>
<div id="reservation_root">
   <div class="left">
      <div class="form_skin">
         <h3>예약자 정보</h3>
         
         <form id="reservation_form">
            <strong>예약자 이름</strong>
            <p><input type="text" name="userName" placeholder="체크인시 필요한 정보입니다." maxlength="20" required autofocus><p>
            <strong>휴대폰 번호</strong>
            <p><input type="tel" id="phoneNumber" name="phoneNumber"  placeholder="체크인시 필요한 정보입니다." maxlength="20" required><p>
         </form>
      </div>
      <hr>
      <div class="form_skin">
         <h3>결제 수단 선택</h3>
         <select id="payment_select" class="select_type" >
      
                  <option  selected="selected" value="KAKAO">
                               카카오페이
                        </option>
                        
                        <option  value="TOSS" >
                               토스
                        </option>
                        <option  value="CARD" >
                               신용/체크카드             
                        </option>
                        <option  value="CELLPHONE" >
                               휴대폰결제
                        </option>
               </select>
      </div>
      <div id="reservation_agree">
         <label><input type="checkbox" name="agree_all" class="inp_chk" required><span>전체 동의</span></label>
         <label><input type="checkbox" name="agree" class="inp_chk"><span>숙소 이용 규칙 및 취소/환불규정 동의<span id="sec_span">(필수)</span></span></label>
         <label><input type="checkbox" name="agree" class="inp_chk"><span>개인정보 수집 및 이용 동의<span id="sec_span">(필수)</span></span></label>
         <label><input type="checkbox" name="agree" class="inp_chk"><span>개인 정보 제 3자 제공 동의<span id="sec_span">(필수)</span></span></label>
         <label><input type="checkbox" name="agree" class="inp_chk"><span>만 14세 이상 확인<span id="sec_span">(필수)</span></span></label>
      </div>
      
   
   </div>
   
   
   
   
   
   <div class="right">
      <div class="reservation_info">
         <span id="info_idx" class="rsvn_el hidden">${infoDto.idx }</span>
         <span id="room_idx" class="rsvn_el hidden">${roomDto.idx }</span>
         <p id="info_name"><strong>숙소이름/객실 타입</strong></p>
         ${infoDto.name}/${roomDto.roomName}
         <p><strong>인원/기간</strong></p>
         <span id= "human_count" class="rsvn_el">${param.human_count}</span>명/ <span id="quantity" class="rsvn_el">${param.quantity }</span>박
         <p><strong>체크인</strong></p>
         <span id="check_in" class="rsvn_el">${param.check_in}</span>
         <p><strong>체크아웃</strong></p>
         <span id="check_out" class="rsvn_el">${param.check_out}</span>
         <hr>
         <div class="reservation_price_info">
         <p><strong>총 결제 금액(VAT 포함)</strong></p>
         <p id="amount_p"><strong><span id="total_amount" class="rsvn_el">${param.price}</span>원</strong></p>
         </div>
         <ul>
            <li>해당 객실가는 세금,봉사료가 포함된 금액입니다</li>
            <li>결제완료 후 예약자 이름으로 바로 체크인 하시면 됩니다</li>
         </ul>
         <p><button type="button" class="reservation_btn right_red">결제하기</button></p>
      </div>
    </div>
    <div class="reservation_modal hidden">
       <div class="modal_content">
       </div>
       <div class="modal_overlay"></div>
    </div>


</div>


<%@ include file="../main/footer.jsp" %>

<script>
   
   //전체동의 체크
   const agreeCheckAll = document.querySelector('#reservation_agree> label > input[name=agree_all]')
   const agreeCheck = document.querySelectorAll('#reservation_agree> label > input[name=agree]')
   //모달창
   const reservation_btn = document.querySelector('.reservation_btn')
   
   
   agreeCheckAll.addEventListener('change',checkHandler)
   agreeCheck.forEach(dto=>dto.addEventListener('change',checkAll))
    reservation_btn.addEventListener('click',inspectConditions)

     
</script>