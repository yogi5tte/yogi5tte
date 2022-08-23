<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/user/host/host_join2.css">
<script src="${cpath }/resources/js/host_join2.js"></script> 

</head>
<body id="init">

<section class="login-container">
    <a id="top_a" href="${cpath }">
        <div class="logo_layer">
            <img class="logo">
            <span>&nbsp;호스트하우스</span>
        </div>
    </a>
    <form class="form-horizontal" id="join-form" method="post" name="join">
        <fieldset class="login-layer" style="height: 570px;">
            <div id="veriable-form">
                <h1>호스트 하우스 회원 가입</h1>
                <span class="input-title">이메일</span>
                <input type="text" name="email" class="form-control" maxlength="48" placeholder="이메일 주소를 입력하세요." title="이메일" value="">
                <span class="input-title">비밀번호</span>
                <input type="password" name="password" class="form-control" minlength="8" maxlength="16" placeholder="영문, 숫자, 특수문자 혼합 8자 이상" title="비밀번호" autocomplete="off">
                <span class="input-title">비밀번호 확인</span>
                <input type="password" name="repassword" class="form-control" minlength="8" maxlength="16" placeholder="비밀번호를 한번 더 입력하세요." title="비밀번호 확인" autocomplete="off">
                <div>
                    <input type="checkbox" id="terms_all_check" name="checkAll">
                    <label for="terms_all_check"><span><strong>전체 동의</strong></span></label>
                </div>
                <div>
                    <input type="checkbox" id="terms2" name="checkOne">
                    <label for="terms2"><span>게스트하우스 업주 <a href="#" id="privacy"><strong>개인정보 수집</strong></a>에 동의합니다. <b>(필수)</b></span></label>
                </div>
                <div>
                    <input type="checkbox" id="important" name="checkOne">
                    <label for="important"><span class="confirm">호스트 <a href="#" id="host_important"><strong>보장사항</strong></a> 에 대한 내용에 동의 합니다. <b>(필수)</b></span></label> 
                </div>
                <button class="btn btn-primary login-button" type="submit">다음</button>
            </div>
        </fieldset>
    </form>
</section>

</body>
</html>