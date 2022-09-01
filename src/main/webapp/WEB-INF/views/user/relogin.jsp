<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
    
    
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/user/login.css">
<script> 
	const cpath = '${cpath}'
</script>
<script src="${cpath }/resources/js/user/join/kakaoLogin.js"></script> 

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
                <div><a href="${cpath }/user/join"><span>회원가입</span></a></div>
            </div>
            <div class="link_half">
                <div><a href="${cpath }/user/host_join"><span>사장님은 여기로</span></a></div>
            </div>
        </form>
    </section>
</div>



<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
const kakao_login_btn = document.getElementById('kakao-login-btn')

kakao_login_btn.addEventListener('click', kakaoLogin)
Kakao.init('3ee173c91ef4a1fde193a487e1aeee37'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단

</script>

<script>
alert('아이디 또는 비밀번호가 틀립니다.')
</script>


</body>
</html>