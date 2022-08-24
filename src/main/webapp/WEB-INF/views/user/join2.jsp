<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="join.jsp" %>

<c:if test="${empty header.referer }">
	<script>
		alert('정상적인 접근이 아닙니다')
		location.href = '${cpath}'
	</script>
</c:if>

<link rel="stylesheet" href="${cpath }/resources/stylecss/user/join/join2.css">

<script src="${cpath }/resources/js/user/join/join2.js"></script> 

    <div class="layer_fix pop_login pop_mem_reserve">
    	
        <section>
        <div class="fix_title">
            <strong>이메일 본인 확인</strong> <!-- 주석 -->
        </div>
    
        <p>
            원활한 서비스 제공을 위해, 이메일 주소를 입력해주세요.
        </p>
    
        <div class="phone_confirm">
            <div id="sendCode">
                <strong>이메일 주소</strong>
                <section>
                    <form id="sendMailForm" class="inp_wrap remove">
                        <input id="send_inp" type="email" name="email" required>
<!--                     	<input type="submit" class="btn_send btn_confirm" value="인증번호 전송"> 활성화 클래스 'active' -->
<!--                         <button type="button" class="btn_checked">확인</button> -->
                    </form>
                    <button id="sendMailForm_btn" type="submit" form="sendMailForm" class="btn_confirm">인증번호 전송</button>
                </section>
            </div>
            <div id="verificationCode">
                <strong>인증번호</strong>
                <section>
                    <form id="authForm" class="inp_wrap remove hidden">
                        <input id="auth_inp" type="text" name="authNumber">
                        <span class="timer">&nbsp;</span>
<!-- 	                    <input type="submit" class="btn_ok btn_confirm" data-verification-type="call" data-verification-next="joinTemplate" value="확인"> -->
                    </form>
                    <button id="authForm_btn" type="submit" form="authForm" class="btn_confirm hidden">확인</button>
                </section>
            </div>
            <input type="hidden" id="phone_certification_point" value="SIGINUP" style="display: none;">
        </div>
    </section>
  </div>

<script>
const authForm_btn = document.getElementById('authForm_btn')
const sendMailForm_btn = document.getElementById('sendMailForm_btn')
const sendMailForm = document.getElementById('sendMailForm')
const authForm = document.getElementById('authForm')
const send_inp = document.getElementById('send_inp')
const auth_inp = document.getElementById('auth_inp')

sendMailForm.addEventListener('submit', sendHandler)
authForm.addEventListener('submit', authHandler)

send_inp.addEventListener('keypress', (event) => {
	sendMailForm_btn.classList.add('gra_left_right_red')
})
auth_inp.addEventListener('keypress', (event) => {
	authForm_btn.classList.add('gra_left_right_red')
})
</script>


</body>
</html>