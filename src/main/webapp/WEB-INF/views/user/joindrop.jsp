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

		<div class="withdraw_popup_container" data-v-21c46902 data-v-35e02141>
			<div class="withdraw_popup" data-v-21c46902="">
				<div class="withdraw_popup__header" data-v-21c46902="">
					<div class="withdraw_title" data-v-21c46902="">
						<p data-v-21c46902="">회원탈퇴</p> 
						<svg id="drop_svg" xmlns="http://www.w3.org/2000/svg" width="20" height="20" data-v-21c46902="" class="">
							<path d="M10 8.586l5.657-5.657 1.414 1.414L11.414 10l5.657 5.657-1.414 1.414L10 11.414l-5.657 5.657-1.414-1.414L8.586 10 2.929 4.343l1.414-1.414z" data-v-21c46902=""></path>
						</svg>
					</div>
				</div> 
				<div class="withdraw_popup__content" data-v-21c46902="" data-v-35e02141="">
					<div class="content_div" data-v-55995f3a="" data-v-35e02141="" assets-info="[object Object]" data-v-21c46902="">
						<div data-v-492799f4="" data-v-55995f3a="" class="withdraw-survey-container">
							<div data-v-492799f4="" class="withdraw-survey-title">
								<span class="content_span" data-v-492799f4="">왜 떠나시는지 
								</span> 
								<span data-v-492799f4="">
									<span data-v-492799f4="" class="emphasis">이유
									</span>
									가 있을까요?
								</span>
							</div> 
						<ul data-v-492799f4="" class="radio-list">
						
							<li data-v-492799f4="" class="radio-list__item">
								<div data-v-492799f4="" class="select-item-area">
									<div data-v-492799f4="" style="display: inline-block; vertical-align: text-top; width: 20px; height: 20px; overflow: hidden; margin-right: 12px;">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="terms" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
								</div>
								<span data-v-492799f4="">사용을 잘 안하게 돼요</span>
							</div>
							</li>
							
							<li data-v-492799f4="" class="radio-list__item">
								<div data-v-492799f4="" class="select-item-area">
									<div data-v-492799f4="" style="display: inline-block; vertical-align: text-top; width: 20px; height: 20px; overflow: hidden; margin-right: 12px;">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="teenager" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
									</div> 
									<span data-v-492799f4="">예약하고 싶은 숙소가 없어요</span>
								</div>
							</li>
							
							<li data-v-492799f4="" class="radio-list__item">
								<div data-v-492799f4="" class="select-item-area">
									<div data-v-492799f4="" style="display: inline-block; vertical-align: text-top; width: 20px; height: 20px; overflow: hidden; margin-right: 12px;">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="privacy" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
									</div> 
									<span data-v-492799f4="">예약, 취소 등 사용이 어려워요
									</span>
								</div> 
							</li>
							
							<li data-v-492799f4="" class="radio-list__item">
								<div data-v-492799f4="" class="select-item-area">
									<div data-v-492799f4="" style="display: inline-block; vertical-align: text-top; width: 20px; height: 20px; overflow: hidden; margin-right: 12px;">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="privacy_auxiliary_policy" value="N" class="inp_chk_02 chk_default terms_checkbox">
									</div> 
									<span data-v-492799f4="">개인정보 보호를 위해 삭제할 정보가 있어요</span>
								</div> 
							</li>
							
							<li data-v-492799f4="" class="radio-list__item">
								<div data-v-492799f4="" class="select-item-area">
									<div data-v-492799f4="" style="display: inline-block; vertical-align: text-top; width: 20px; height: 20px; overflow: hidden; margin-right: 12px;">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="marketing" value="N" class="inp_chk_02 chk_default terms_checkbox">
									</div> 
									<span data-v-492799f4="">다른 계정이 있어요</span>
								</div> 
							</li>
							
							<li data-v-492799f4="" class="radio-list__item">
								<div data-v-492799f4="" class="select-item-area">
									<div data-v-492799f4="" style="display: inline-block; vertical-align: text-top; width: 20px; height: 20px; overflow: hidden; margin-right: 12px;">
										<input name="check_inp" onclick="checkOnlyOne(this)" type="checkbox" id="location" value="N" class="inp_chk_02 chk_default terms_checkbox">
									</div> 
									<span data-v-492799f4="">기타</span>
								</div> 
							</li>
							
						</ul>
						
						<form data-v-492799f4="" class="bottom-section">
							<div data-v-492799f4="" class="password-area">
								<label data-v-492799f4="" for="password" class="password-area__label">비밀번호 입력</label> 
								<input data-v-492799f4="" id="password" type="password" autocomplete="off" placeholder="비밀번호를 입력하세요." class="password-area__input">
							</div> 
							<div data-v-492799f4="" class="button-area">
								<button data-v-492799f4="" class="btn_link button-area__button is-accept">다음 단계로</button>
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