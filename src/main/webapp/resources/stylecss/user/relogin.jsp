<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!-- login -->    
    
<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/login.css">

<div class="layer_fix">
    <section>
        <form id="loginForm" method="post">
            <input type="hidden" name="yeogi_token">
            
            <div class="fix_title">
                <strong class="logo"><a href="${cpath }">여기어때</a></strong>
            </div>
            
            <button type="button" id="kakao-login-btn" class="btn_start btn_kakao"></button>
            
            <p class="space_or"><span>또는</span></p>
	
            <div class="inp_type_1">
                <input type="email" name="email" placeholder="이메일 주소" required/>
            </div>

            <div class="inp_type_1">
                <input type="password" name="password" placeholder="비밀번호" required/>
            </div>

            <div><input class="btn_link" type="submit"></div>


            <div class="link_half">
                <div><a href="${cpath }/join"><span>회원가입</span></a></div>
            </div>
        </form>
    </section>
</div>

<script>
	alert('아이디 또는 비밀번호가 틀립니다.')
</script>



</body>
</html>