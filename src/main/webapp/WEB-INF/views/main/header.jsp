<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/header.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/main/function.js"></script>
<script src="${cpath }/resources/js/user/join/kakaoLogin.js"></script> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all" href="${cpath }/resources/stylecss/main/daterangepicker.css" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.min.js"></script>
<script type="text/javascript" src="${cpath }/resources/js/main/daterangepicker.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0ec84a3604985d54457683494bc933a9"></script>
</head>

<body class="pc">
    <div class="wrap">
        <header class="header">
            <section>
                <h1><a class="" href="${cpath }" title="요기어때">요기어때</a></h1>
                <button type="button" class="btn_menu">메뉴</button>
                <ul class="gnb_pc">
                    <li>
                  <!-- 로그인이 되어있지 않다면 로그인 페이지로 리다이렉트-->
                  		<c:if test="${not empty login }">	
                        <a href="${cpath }/user/my_reservation">예약내역</a>
                        </c:if>
                    </li>
                    <li>
                 	<c:if test="${empty login }">
						<!-- 로그인이 되어있다면 로그인 버튼이 아닌 닉네임 출력 -->
                        <a href="${cpath }/user/login"><span>로그인</span></a>
                        </c:if>
                        <c:if test="${not empty login }">
                        <a href="${cpath }/user/mypage">${login.nickName}환영합니다.</a>
<%--                         <a href="${cpath }/user/mypage">${login.idx}환영합니다.</a>                         --%>
                        <div class="kakaLogout"><a href="${cpath }/user/logout">[로그아웃]</a></div>
                        </c:if>
                    </li>
                </ul>
                <!-- //Search -->
            </section>
        </header>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
const kakaLogout = document.querySelector('.kakaLogout > a')
console.log(kakaLogout)

kakaLogout.addEventListener('click', kakaoLogout)


Kakao.init('3ee173c91ef4a1fde193a487e1aeee37'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단

</script>


<script>
	window.addEventListener('scroll', scrollHandler)
</script>