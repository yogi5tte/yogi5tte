<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>


<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/user/host/host_join.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/user/join/host_join.js"></script>

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
    <fieldset class="login-layer" style="height: 400px;">
      <div id="veriable-form">
        <h1>호스트 하우스 로그인</h1>
        <span class="input-title">이메일</span>
        <input type="text" name="email" class="form-control" placeholder="이메일" title="이메일 주소를 입력하세요.">
        <span class="input-title">비밀번호</span>
        <input type="password" name="password" class="form-control" placeholder="비밀번호를 입력하세요.">
       
        <button class="btn btn-primary login-button" type="submit">로그인</button>
    </div>
</fieldset>
</form>
<div id="btn_wrapper">
	<a id="open">회원가입</a>
</div>
</section>

<div class="modal hidden">
    <div class="modal_overlay"></div>
    <div class="modal_content">
        <div class="modal_header">
            <h4 class="modal_title">이메일 본인 확인</h4>
        </div>
        <div class="modal_body">
            <strong>이메일</strong>
	            <form id="sendMailForm" class="num_input">
	                <input class="form-control" type="email" name="email" placeholder="이메일을 입력해주세요." required>
	                <button class="modal_btn" type="submit">인증번호 전송</button>
	            </form>            
            <strong>인증번호</strong>
	            <form id="authForm" class="num_input">
	                <input class="form-control" type="text" name="authNumber" placeholder="인증번호를 입력해주세요.">
		            <button class="modal_btn" type="submit">확인</button>
	            </form>
        </div>
    </div>
</div>


  <script>
  	const login_form = document.forms[0]
  	login_form.addEventListener('submit', submitHandler)
  
  	const sendMailForm = document.forms[1]
  	sendMailForm.addEventListener('submit', sendHandler)
 
  	const authForm = document.forms[2]
  	authForm.addEventListener('submit', authHandler)
	
    const open = document.getElementById('open');
    const modal = document.querySelector('.modal')

    const openModal = () => {
        modal.classList.remove('hidden')
    }

    open.addEventListener('click', openModal);
  </script>


<script>
alert('아이디 또는 비밀번호가 틀립니다.')
</script>


</body>
</html>