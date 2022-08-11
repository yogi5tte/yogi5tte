<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/user/join/joindrop2.css">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/user/join/joindrop2.js"></script> 

</head>
<body>
<c:if test="${empty header.referer }">
	<script>
		alert('정상적인 접근이 아닙니다')
		location.href = '${cpath}'
	</script>
</c:if>

<div class="withdraw_popup_container" data-v-21c46902="" data-v-35e02141="">
	<div class="withdraw_popup" data-v-21c46902="">
		<div class="withdraw_popup__header" data-v-21c46902="">
			<div class="withdraw_title" data-v-21c46902="">
				<p data-v-21c46902="">회원탈퇴</p> 
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" data-v-21c46902="" class="">
				<path d="M10 8.586l5.657-5.657 1.414 1.414L11.414 10l5.657 5.657-1.414 1.414L10 11.414l-5.657 5.657-1.414-1.414L8.586 10 2.929 4.343l1.414-1.414z" data-v-21c46902=""></path>
			</svg>
			</div>
		</div> 
		<div class="withdraw_popup__content" data-v-21c46902="" data-v-35e02141="">
			<div data-v-55995f3a="" data-v-35e02141="" assets-info="[object Object]" data-v-21c46902="">
				<div data-v-9700c5a6="" data-v-55995f3a="" class="after-survey-container">
				<div data-v-9700c5a6="" class="after-survey-title">
					<span data-v-9700c5a6="">이제 더 가시면..</span> 
					<span data-v-9700c5a6="" class="emphasis">계정이 영영 사라져요</span>
				</div>
     			
               <ul data-v-9700c5a6="" class="paragraph_size_m">
	        		<li data-v-9700c5a6="" class="paragraph_list">
		        		<b data-v-9700c5a6="">등록된 리뷰는 자동으로 삭제되지 않아요.</b> 탈퇴 전
		            	개별적으로 삭제해 주세요.
	        		</li> 
	        		<li data-v-9700c5a6="" class="paragraph_list">
	        			<b data-v-9700c5a6="">계정 정보 및 찜 목록 등 서비스 이용정보는 복구가 불가</b>하며, 
	        			동일한 아이디로 24시간 이후 재가입이 가능해요.
	        		</li>
        		</ul> 
        		<div data-v-9700c5a6="" class="bottom-section">
        			<div data-v-9700c5a6="" class="checkbox-area">
        				<div data-v-9700c5a6="" class="checkbox" style="display: inline-block;">
        					<div style="display: inline-block; vertical-align: text-top; width: 20px; height: 20px; overflow: hidden; margin: 0px 8px 0px auto;">
        					 <input type="checkbox" id="terms" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
        					<span data-v-9700c5a6="" class="checkbox-area__text">위 주의사항을 모두 숙지했고, 탈퇴에 동의합니다
        					</span>
        			</div> 
        			<button data-v-9700c5a6="" class="button" disabled="disabled">
            		진짜 안녕
        			</button>
        			</div>
        		</div>
        	</div>
        </div>
       </div>
      </div>
      
      
<script>
	const terms = document.getElementById('terms')
	const btn = document.querySelector('.button')
	
	terms.addEventListener('change', termsHandler)
	btn.addEventListener('click', btnHandler)
</script>

</body>
</html>