<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/header.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/reservation/approve.css">
    


</head>
<body>
<script src="${cpath }/resources/js/reservation/approve.js"></script>

<script type = "text/javascript" src = "https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type = "text/javascript" src = "https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<div class="reservation_approve_info">
	<div class="logo_img_div">
	
	</div>
	<div class="approve_wrap">
		<h2>예약 완료 내역</h2>
		<div class="btn_set">
			<button id="home_btn" onclick="location.href='${cpath}'"><span>홈으로 돌아가기</span></button>
			<button id="pdf_btn"><span>PDF로 저장</span></button>
		</div>
	</div>	
			<p class="status">
			예약확정
			</p>
			
			<p class="info"><strong>숙소이름</strong></p>
			${param.name}
			<p class="info"><strong>객실타입/기간</strong></p>
			${param.roomName}/${rsvnDto.quantity}일
			<p class="info"><strong>체크인</strong></p>
			${rsvnDto.check_in}
			<img id="logo_img" src="${cpath }/resources/image/yogired.png">
			<p class="info"><strong>체크아웃</strong></p>
			${rsvnDto.check_out}
			
			<p class="info"><strong>예약자</strong></p>
			${rsvnDto.userName}
			<p class="info"><strong>전화번호</strong></p>
			${rsvnDto.phoneNumber}
			<ul>
				<li>휴대 번호는 예약한 숙소에 전송되며, 퇴실 후 7일간 보관됩니다.</li>
			</ul>
			<hr>
			<div class="price_info">
				<p class="pay_info"><strong>결제 정보</strong></p>
				<div class="account">
				<p><strong>총 결제금액</strong></p>
				<p id="price_final"><strong>${rsvnDto.total_amount }원</strong></p>
				</div>
			<p class="cancel_info">예약 취소는 여기어때 앱에서 가능합니다.</p>
			</div>
		</div>	
	

<%@ include file="../main/footer.jsp" %>
</body>
<script>
	const pdf_btn = document.getElementById('pdf_btn')
	
	pdf_btn.addEventListener('click',PDFConvertHandler)
</script>

</html> 