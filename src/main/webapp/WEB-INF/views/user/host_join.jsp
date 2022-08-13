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
<link rel="stylesheet" href="${cpath }/resources/stylecss/host_join.css">
<script src="${cpath }/resources/js/host_join.js"></script> 

</head>
<body id="init">

<section class="login-container">
  <a id="top_a" href="${cpath }">
    <div class="logo_layer">
      <img class="logo">
      <span>&nbsp;호스트하우스</span>
    </div>
  </a>
  <form class="form-horizontal" id="login-form" method="post" name="login">
    <fieldset class="login-layer" style="height: 466px;">
      <div id="veriable-form">
        <h1>호스트 하우스 로그인</h1>
        <span class="input-title">이메일</span>
        <input type="text" name="email" class="form-control" maxlength="48" placeholder="이메일" title="이메일 주소를 입력하세요.">
        <span class="input-title">비밀번호</span>
        <input type="password" name="password" class="form-control" minlength="8" maxlength="16" placeholder="비밀번호를 입력하세요.">
        
        <button class="btn btn-primary login-button " type="submit">로그인</button>
        <a href="${cpath }/host_join2" class="btn btn-default login-button ">회원가입 </a>
      </div>
    </fieldset>
  </form>
</section>



</body>
</html>