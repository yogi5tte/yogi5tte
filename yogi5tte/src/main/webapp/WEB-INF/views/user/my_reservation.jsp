<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/mypage/my_reservation.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/mypage/my_reservation.js"></script> 

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
           <div class="reserve_list">
              <section>
                 <h3>예약 내역</h3> 
                <ul class="list_wrap">
                <li class="reservation-detail">
                   <div><!----> 
                   <p class="pic">
                   <img loading="lazy" srcset="https://image.goodchoice.kr/resize_354x184/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg, https://image.goodchoice.kr/resize_531x276/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg 1.5x , https://image.goodchoice.kr/resize_708x368/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg 2x" src="https://image.goodchoice.kr/resize_354x184/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg" alt="남해 베스트 호텔 &amp;펜션" class="align">
                   </p> 
                   <a href="${cpath }/user/my_reservation_detail" class="product-title">
                   <i class="">예약확정</i> 
                   <strong>${list[0].user_Name}</strong> 
                   <span>체크인 : ${list[0].check_In}<br> 체크아웃 : ${list[0].check_Out }</span>
                   <b>예약 상세 &gt;</b>
                   </a> <!---->
                   </div>
                </li>
               </ul> <!---->
            </section>
           </div>
        </div>
    </div>
    <!-- //Content  -->
                        
                        
                        


<script>

window.addEventListener('scroll', scrollHandler)
</script>


</body>
</html>