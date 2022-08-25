<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/mypage/my_reservation_detail.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/mypage/my_reservation_detail.js"></script> 

</head>
<body class="pc">
<c:if test="${empty header.referer }">
	<script>
		alert('정상적인 접근이 아닙니다')
		location.href = '${cpath}'
	</script>
</c:if>
        
        <!-- Sub Top -->
    <div class="sub_top_wrap">
        <div class="sub_top bg_kong_2">
            <h2>내정보</h2>
        </div>
    </div>
    <!-- //Sub Top -->
    
  
    <!-- Content  -->
    <div id="content" class="sub_wrap my_wrap">
        <p class="sub_title">내 정보 관리</p>
    
        <!-- Nav -->
            <nav>
               <ul>
                   <li><a href="${cpath }/user/my_reservation">예약 내역</a></li>
                   <li><a href="${cpath }/user/mypage">내 정보 관리</a></li>
               </ul>
           </nav>
        <div class="align_rt">
              <div class="reserve_detail"><!----> 
                 <div class="info" style="background-image: url(&quot;https://image.goodchoice.kr/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg&quot;);">
                    <div>
                       <i class="">예약확정</i> 
                       <strong>남해 베스트 호텔 &amp;펜션</strong> 
                       <span>1인전용 게스트룸 •1박</span>
                    </div>
                 </div> 
                 <section>
                    <div>
                       <p>
                       <strong>체크인</strong>${list[0].check_In}</p> 
                       <p>
                       <strong>체크아웃</strong>${list[0].check_Out }</p>
                    </div> 
                    <div> 
                       <p>
                       <strong>예약자 이름</strong>${list[0].user_Name}
                       </p>         
                    </div> 
                    <div class="total">
                       <p>결제정보</p> 
                       <p>
                       <strong>총 결제금액</strong> 
                       <b>${list[0].total_Amount }원</b>
                       </p>
                    </div>
                 </section>
               </div>
            </div>
       </div>
    <!-- //Content  -->
                        
                        
 <%@ include file="../main/footer.jsp" %>                       
               


<script>

window.addEventListener('scroll', scrollHandler)
</script>



</body>
</html>