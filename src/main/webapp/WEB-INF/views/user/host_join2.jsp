<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>


<c:if test="${empty header.referer }">
	<script>
		alert('정상적인 접근이 아닙니다')
		location.href = '${cpath}'
	</script>
</c:if>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/user/host/host_join2.css">
<script> cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/user/join/host_join2.js"></script> 

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
        <fieldset class="login-layer" style="height: 850px;">
            <div id="veriable-form">
                <h1>호스트 하우스 회원 가입</h1>
                <span class="input-title">이메일</span>
                <input type="text" name="email" id="gcuseremail" class="form-control" placeholder="이메일 주소를 입력하세요." required>
                <div id="checkId" class="impo"></div>
                
                <span class="input-title">비밀번호</span>
                <input type="password" name="password" id="new_pw" class="form-control" placeholder="6글자 이상, 16글자 이하" required>
                <div id="check1" class="impo"></div>
                
                <span class="input-title">비밀번호 확인</span>
                <input type="password" name="repassword" id="new_pw_re" class="form-control" placeholder="비밀번호를 한번 더 입력하세요." required>
                <div id="check2" class="impo"></div>
                
                <span class="input-title">닉네임</span>
                <input type="text" id="unick" class="form-control" name="nickName" placeholder="닉네임을 입력하세요." required>
                <div id="nickCheck" class="impo"></div>
                
                <span class="input-title">이름</span>
                <input type="text" id="userName" class="form-control" name="name" placeholder="이름을 입력하세요." required>
                
                <span class="input-title">전화번호</span>
                <input type="text" id="pNum" class="form-control" name="phoneNumber" placeholder="전화번호를 입력하세요(-포함)." required>
                <div id="phoneNumber" class="impo"></div>
                
                <input class="btn btn-primary login-button" id="joinBtn" form="join-form" type="submit" value="다음">
            </div>
        </fieldset>
    </form>
</section>


<script>
	const gcuseremail = document.getElementById('gcuseremail')
	const new_pw = document.getElementById('new_pw')
	const new_pw_re = document.getElementById('new_pw_re')
	const unick = document.getElementById('unick')
	const joinBtn = document.getElementById('joinBtn')
	
	gcuseremail.addEventListener('blur', checkId)
	new_pw.addEventListener('blur', checkPassword1)
   	new_pw_re.addEventListener('blur', checkPassword2)
   	unick.addEventListener('blur', checkingNick)
   	joinBtn.addEventListener('click', allCheck)
</script>



</body>
</html>