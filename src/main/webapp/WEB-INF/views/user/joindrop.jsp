<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/user/join/joindrop.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/user/join/joindrop.js"></script> 

</head>
<body>
<c:if test="${empty header.referer }">
	<script>
		alert('정상적인 접근이 아닙니다')
		location.href = '${cpath}'
	</script>
</c:if>

		<div class="withdraw_popup_container">
			<div class="withdraw_popup">
				<div class="withdraw_popup__header">
					<div class="withdraw_title">
						<p>회원탈퇴</p>
					</div>
				</div> 
				<div class="withdraw_popup__content">
					<div class="content_div" assets-info="[object Object]">
						<div class="withdraw-survey-container">
							<div class="withdraw-survey-title">
								<span class="content_span">왜 떠나시는지 
								</span> 
								<span>
									<span class="emphasis">이유
									</span>
									가 있을까요?
								</span>
							</div> 
						<ul class="radio-list">
						
							<li class="radio-list__item">
								<div class="select-item-area">
									<div id="inp_div">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="terms" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
								</div>
								<span>사용을 잘 안하게 돼요</span>
							</div>
							</li>
							
							<li class="radio-list__item">
								<div class="select-item-area">
									<div id="inp_div">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="teenager" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
									</div> 
									<span>예약하고 싶은 숙소가 없어요</span>
								</div>
							</li>
							
							<li class="radio-list__item">
								<div class="select-item-area">
									<div id="inp_div">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="privacy" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
									</div> 
									<span>예약, 취소 등 사용이 어려워요
									</span>
								</div> 
							</li>
							
							<li class="radio-list__item">
								<div class="select-item-area">
									<div id="inp_div">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="privacy_auxiliary_policy" value="N" class="inp_chk_02 chk_default terms_checkbox">
									</div> 
									<span>개인정보 보호를 위해 삭제할 정보가 있어요</span>
								</div> 
							</li>
							
							<li class="radio-list__item">
								<div class="select-item-area">
									<div id="inp_div">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="marketing" value="N" class="inp_chk_02 chk_default terms_checkbox">
									</div> 
									<span>다른 계정이 있어요</span>
								</div> 
							</li>
							
							<li class="radio-list__item">
								<div class="select-item-area">
									<div id="inp_div">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="location" value="N" class="inp_chk_02 chk_default terms_checkbox">
									</div> 
									<span>기타</span>
								</div> 
							</li>
							
						</ul>
						
						<form class="bottom-section">
							<div class="password-area">
								<label for="password" class="password-area__label">비밀번호 입력</label> 
								<input id="password" type="password" autocomplete="off" placeholder="비밀번호를 입력하세요." class="password-area__input">
							</div> 
							<div class="button-area">
								<button class="btn_link button-area__button is-accept">회원 탈퇴</button>
							</div>
						</form>
					</div>
					</div>
				</div>
			</div>
		</div>
		
		
 <script> 
 	// 하위 체크박스 요소들을 chkAll 변수로 불러와서
 	const chkAll = document.querySelectorAll('.terms_checkbox')
 	// chkAll 각 요소들을 btn이라고 할때 btn이 'change' event가 일어나면 chkHandler를 작동해라
 	chkAll.forEach(btn => btn.addEventListener('change', chkHandler))
	
 	const nextbtn = document.querySelector('.btn_link')
 	nextbtn.addEventListener('click', btnHandler)
	
 	const password = document.getElementById('password')
 	password.addEventListener('keypress', chkHandler)
 	
 	
 </script>

		

</body>
</html>