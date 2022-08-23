<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/user/host/host_join3.css">
<script src="${cpath }/resources/js/host_join3.js"></script> 

</head>
<body id="init">


<section class="login-container" >
    <a href="/auth/authorization">
        <div class="logo_layer">
            <img class="logo">
            <span>&nbsp;호스트하우스</span>
        </div>
    </a>
    <form class="form-horizontal" id="authorization-form" method="post" action="/auth/authorization" name="agree">
        <fieldset class="login-layer" style="height: 434px;">
            <div id="veriable-form">
                <h1>이메일인증</h1>
                <span class="noti-title">여기어때 호스트하우스에서 보낸 이메일 주소를 인증해 주세요.</span>
                <br><br>
                <span class="input-title">이메일(유효한 이메일 사용)</span>
                <input type="text" name="email" class="form-control readonly" placeholder="이메일 주소를 입력하세요." value="vlvkdksgo@naver.com" readonly="readonly" title="이메일">

                <button class="btn btn-primary login-button" type="submit">이메일전송</button>
                <a href="/auth/logout" class="btn btn-default login-button">로그아웃</a>
            </div>
        </fieldset>
    </form>
</section>

</body>
</html>