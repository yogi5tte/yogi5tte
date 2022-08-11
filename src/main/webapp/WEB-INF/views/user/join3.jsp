<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="join.jsp" %>

<c:if test="${empty header.referer }">
	<script>
		alert('정상적인 접근이 아닙니다')
		location.href = '${cpath}'
	</script>
</c:if>
    
    <link rel="stylesheet" href="${cpath }/resources/stylecss/user/join/join3.css">
    
    <div class="layer_fix pop_login pop_mem_reserve fix_disable">
        <section>
        <form id="joinForm" action="https://www.goodchoice.kr/user/joinProcess" autocomplete="off" method="post" novalidate="novalidate">
            <input type="hidden" name="yeogi_token" value="c99c88280b18f8f1e263d593326085b6">
    
            <input type="hidden" name="privacy_auxiliary_policy">
            <input type="hidden" name="location_policy">
            <input type="hidden" name="marketing_acceptance">
    
            <div class="fix_title">
                <h1 class="page_head"><a style="background: url('resources/image/요기오때빨간색로고.png') 50% 50% no-repeat;" href="" title="여기어때">여기어때</a></h1>
            </div>
    
            <div class="join">
                <strong class="sub_title">회원가입</strong>
                <b>이메일 아이디</b>
                <div class="inp_type_2 form-errors"><!-- focus / err -->
                    <input type="email" name="uid" id="gcuseremail" placeholder="이메일 주소를 입력해주세요.">
                    <label id="gcuseremail_msg" class="validate_msg_label" style="color: red;"></label>
                </div>
    
                <b>비밀번호</b>
                <div class="inp_type_2 form-errors form-password-rule">
                    <input type="password" name="upw" placeholder="비밀번호를 입력해주세요." id="new_pw">
                    <label id="new_pw_msg" class="validate_msg_label"></label>
                </div>
    
                <b>비밀번호 확인</b>
                <div class="inp_type_2 form-errors">
                    <input type="password" name="upw_retry" placeholder="비밀번호를 입력해주세요." id="new_pw_re">
                    <label id="new_pw_re_msg" class="validate_msg_label"></label>
                </div>
    
                <b>닉네임</b>
                <div class="inp_type_2 form-errors btn-add">
                    <input type="text" id="unick" name="unick" required="" class="required" placeholder="닉네임을 입력하세요." data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14" data-rule-spacechar="true" data-rule-specialchar="true"><label id="unick-error" class="error help-block default_label_txt icon-ic_downwards_arrow" for="unick"></label>
                </div>
    
                <button type="button" id="joinBtn" class="btn_link btn_user_submit"><span>가입하기</span></button> <!-- style="background-color: rgb(250, 250, 250); color: rgba(0, 0, 0, 0.16); border: none; -->
            </div>
        </form>
    </section>
    </div>


</body>
</html>