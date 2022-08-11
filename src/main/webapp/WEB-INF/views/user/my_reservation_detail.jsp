<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/mypage/my_reservation_detail.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/mypage/my_reservation_detail.js"></script> 

</head>
<body class="pc">

<div class="wrap">
        <header class="header">
            <section>
                <h1><a class="" href="${cpath }" title="요기어때">요기어때</a></h1>
                <button type="button" class="btn_menu">메뉴</button>
                <ul class="gnb_pc">
                    <li>
                        <a href="#">예약내역</a>
                    </li>
                    <li>
						<!-- 로그인 했을시 로그인 버튼이 아닌 닉네임 출력 -->
                        <a href="${cpath }/login"><span>로그인</span></a>
                    </li>
                </ul>
                <!-- //Search -->
            </section>
        </header>
        
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
	                <li><a class="" href="/my/reserveList">예약 내역</a></li>
	                            <li><a class="active" href="/my/mypage">내 정보 관리</a></li>
	            </ul>
        	</nav>
        <div data-v-4c4f460e="" class="align_rt">
		        <div data-v-4c4f460e="" class="reserve_detail"><!----> 
			        <div data-v-4c4f460e="" class="info" style="background-image: url(&quot;https://image.goodchoice.kr/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg&quot;);">
				        <div data-v-4c4f460e="">
					        <i data-v-4c4f460e="" class="">예약확정</i> 
					        <strong data-v-4c4f460e="">남해 베스트 호텔 &amp;펜션</strong> 
					        <span data-v-4c4f460e="">1인전용 게스트룸 •1박</span>
				        </div>
			        </div> 
			        <section data-v-4c4f460e="">
				        <div data-v-4c4f460e="">
					        <p data-v-4c4f460e="">
					        <strong data-v-4c4f460e="">체크인</strong>2022.08.30 화 15:00</p> 
					        <p data-v-4c4f460e="">
					        <strong data-v-4c4f460e="">체크아웃</strong>2022.08.31 수 12:00</p>
				        </div> 
				        <div data-v-4c4f460e="">
					        <p data-v-4c4f460e="">
					        <strong data-v-4c4f460e="">예약번호</strong>101695233</p> 
					        <p data-v-4c4f460e="">
					        <strong data-v-4c4f460e="">예약자 이름</strong>권진혁</p> 					        
				        </div> 
				        <div data-v-4c4f460e="" class="total">
					        <p data-v-4c4f460e="">결제정보</p> 
					        <p data-v-4c4f460e="">
					        <strong data-v-4c4f460e="">총 결제금액</strong> 
					        <b data-v-4c4f460e="">33,000원</b>
					        </p>
				        </div>
			        </section> 
		        	<a data-v-4c4f460e="" href="tel:050440865482" class="btn_call">전화문의하기</a>
		      	</div>
	      	</div>
    	</div>
    <!-- //Content  -->
                        
                        
                        
               


<script>

window.addEventListener('scroll', scrollHandler)
</script>



</body>
</html>