<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/mypage/my_reservation.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/mypage/my_reservation.js"></script> 

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
                        <a href="${cpath }/user/login"><span>로그인</span></a>
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
	                <li><a class="" href="${cpath }/user/my_reservation">예약 내역</a></li>
	                <li><a class="active" href="${cpath }/user/mypage">내 정보 관리</a></li>
	            </ul>
        	</nav>
        <div data-v-50bfe504="" class="align_rt">
	        <div data-v-50bfe504="" class="reserve_list">
		        <section data-v-50bfe504="">
			        <h3 data-v-50bfe504="">예약 내역</h3> 
				    <ul data-v-50bfe504="" class="list_wrap">
					 <li data-v-50bfe504="" data-dono="101695233" class="reservation-detail">
					 	<div data-v-7a3075bf="" data-v-50bfe504=""><!----> 
					    <p data-v-7a3075bf="" class="pic">
					    <img data-v-7a3075bf="" loading="lazy" srcset="https://image.goodchoice.kr/resize_354x184/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg, https://image.goodchoice.kr/resize_531x276/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg 1.5x , https://image.goodchoice.kr/resize_708x368/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg 2x" src="https://image.goodchoice.kr/resize_354x184/adimg_new/5887/5960/e6e70f195be06b1e0b872b01fc580261.jpg" alt="남해 베스트 호텔 &amp;펜션" class="align">
					    </p> 
					    <a data-v-7a3075bf="" href="${cpath }/user/my_reservation_detail" class="product-title">
					    <i data-v-7a3075bf="" class="">예약확정</i> 
					    <strong data-v-7a3075bf="">남해 베스트 호텔 &amp;펜션</strong> 
					    <span data-v-7a3075bf="">체크인:08.30 화 15:00 • 1박</span> 
					    <b data-v-7a3075bf="">예약 상세 &gt;</b>
					    </a> <!---->
					    </div>
					 </li>
					</ul> <!---->
				</section> 
				<section data-v-50bfe504="" class="list_cancel">
					<h3 data-v-50bfe504="">이용 내역</h3> 
				    <ul data-v-50bfe504="" class="list_wrap"></ul> <!---->
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