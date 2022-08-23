<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="join.jsp" %>

<%-- <c:if test="${empty header.referer }"> --%>
<!-- 	<script> -->
<!-- 		alert('정상적인 접근이 아닙니다') -->
<%--  		location.href = '${cpath}' --%>
<!-- 	</script> -->
<%-- </c:if> --%>
    
    <link rel="stylesheet" href="${cpath }/resources/stylecss/user/join/join3.css">
    <script src="${cpath }/resources/js/user/join/join3.js"></script> 
    
    <div class="layer_fix pop_login pop_mem_reserve fix_disable">
        <section>
        <form id="joinForm" autocomplete="off" method="post" novalidate="novalidate">
            <input type="hidden" name="yeogi_token" value="c99c88280b18f8f1e263d593326085b6">
    
            <input type="hidden" name="privacy_auxiliary_policy">
            <input type="hidden" name="location_policy">
            <input type="hidden" name="marketing_acceptance">
    
            <div class="fix_title">
                <h1 class="page_head"><a href="" title="여기어때">여기어때</a></h1>
            </div>
    	
            <div class="join">
            	<form>
                <strong class="sub_title">회원가입</strong>
                <b>이메일 아이디</b>
                <div class="inp_type_2 form-errors"><!-- focus / err -->
                    <input type="text" name="email" id="gcuseremail" placeholder="이메일아이디 입력" required>
                    <div class="emailAn">@</div>
                    <label id="gcuseremail_msg" class="validate_msg_label" style="color: red;"></label>
	                    <select class="emailCheckBox" id="mail_Line">
	                   		  <option value="" selected="selected">==메일선택==</option>
	                   		  <option value="naver">naver.com</option>
							  <option value="google">google.com</option>
							  <option value="hanmail">hanmail.net</option>
							  <option value="nate">nate.com</option>
							  <option value="kakao">kakao.com</option> 
	                    </select>
                </div>
                <div id="checkId" class="impo"></div>    
                <b>비밀번호</b>
                <div class="inp_type_2 form-errors form-password-rule">
                    <input type="password" name="password" placeholder="비밀번호를 입력해주세요." id="new_pw" required>
                    <label id="new_pw_msg" class="validate_msg_label"></label>
                </div>
                <div id="check1" class="impo"></div>
    
                <b>비밀번호 확인</b>
                <div class="inp_type_2 form-errors">
                    <input type="password" placeholder="비밀번호를 입력해주세요." id="new_pw_re" required>
                    <label id="new_pw_re_msg" class="validate_msg_label"></label>
                </div>
                <div id="check2" class="impo"></div>
                
    
                <b>닉네임</b>
                <div class="inp_type_2 form-errors btn-add">
                    <input type="text" id="unick" name="nickName" required placeholder="닉네임을 입력하세요.">
                </div>
	            <div id="nickCheck" class="impo"></div>
    
                <button type="submit" id="joinBtn" class="btn_link btn_user_submit"><span>가입하기</span></button> <!-- style="background-color: rgb(250, 250, 250); color: rgba(0, 0, 0, 0.16); border: none; -->
            </div>
            </form>
      
    </section>
    </div>
    
   <script>
   const new_pw = document.getElementById('new_pw')
   const new_pw_re = document.getElementById('new_pw_re')
   const mail_Line = document.getElementById('mail_Line')
   const unick = document.getElementById('unick')
   const joinBtn = document.getElementById('joinBtn')
   
   new_pw.addEventListener('blur', checkPassword1)
   new_pw_re.addEventListener('blur', checkPassword2)
   mail_Line.addEventListener('blur', checkId)
   unick.addEventListener('blur', checkingNick)
   joinBtn.addEventListener('click', allCheck)
   </script>


</body>
</html>