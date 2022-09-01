<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="main/header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/main.css">
<script src="${cpath }/resources/js/main/function.js"></script>

		<!-- Content-->
		<div id="content">
			<div class="main_spot">
			    <h2>어떤 숙소 찾으세요?</h2>
			    <div class="main_link">
			        <ul>
			            <li class="selected ml"><a href="#"><span class="ico_01"></span><p cidx="101">모텔</p></a></li> 
			            <li class="ml"><a href="#"><span class="ico_02"></span><p cidx="102">호텔·리조트</p></a></li>
			            <li class="ml"><a href="#"><span class="ico_03"></span><p cidx="103">펜션</p></a></li>
					</ul>	        
		        	<div class="selectctg">
		        		<div class="btn_loc">
		        			<span>다음 숙소는 어디로?</span>
		        		</div>
						<div class="btn_date">
							<input type="text" id="daterangepicker">
						</div>
		        		<div class ="btn_many">
							<span id="txtResult">몇명에서 떠나시나요?</span>
						</div>
						<div><button type="submit">검색</button></div>
		        	</div>
			    </div>
				    <div class="selectctg">
						<ul class="loc hidden">
							<p><strong>여행지를 선택해주세요</strong></p>
							<li>서울</li>
							<li>부산</li>
						</ul>
						<section class="many hidden">
							<strong>인원</strong>
							<div class="cnt_people">
								<button type="button" class="dn">-</button>
								<span id="result">1</span>
								<button type="button" class="up">+</button>
							</div>
						</section>
					</div>
				</div>
			<!-- //Link -->
			<!-- Recommend -->
			<div class="recommend">	
			    <h2>요기오때 소식</h2>
			    <ul>
			        <li>
			            <a href="${cpath }"><img src="https://image.goodchoice.kr/images/web_v3/b2b_banner.png"><strong>요기어때 비즈니스</strong>출장부터 복지까지<br>요기어때 비즈니스로 스마트하게</a>
			        </li>
			        <li>
			            <a href="${cpath }"><img src="https://image.goodchoice.kr/images/web_v3/re_jalnan.png"><strong>요기어때 서체 출시</strong>젊고 당당한 요기어때 잘난체<br>지금 다운로드 받으세요!</a>
			        </li>
			    </ul>
			</div>
			
			<!-- EVENT -->
			<div class="event_main">
			    <h2>이벤트</h2>
			     <section class="swiper-container">
		         <ul class="swiper-wrapper" data-num="0">
		             <li class="swiper-slide"><a href="${cpath }"><img src="https://image.goodchoice.kr/images/cms/home_img/3c13f7bf4ea5ef67729fa285aca7896f.jpg" alt="페이백 50﹪ 쿠폰 이벤트"></a></li>
		             <li class="swiper-slide"><a href="${cpath }"><img src="https://image.goodchoice.kr/images/cms/home_img/fbaabc9a7da7a4f20e1b43c44da60b34.jpg" alt="올여름 100만원 쿠폰어때"></a></li>
		             <li class="swiper-slide"><a href="${cpath }"><img src="https://image.goodchoice.kr/images/cms/home_img/67223336700c3b16456fe8279cac2bcc.png" alt="총 2천만원 경품 싹-다 드림!"></a></li>
		             <li class="swiper-slide"><a href="${cpath }"><img src="https://image.goodchoice.kr/images/cms/home_img/2a2a2b5abd30e342833c3dfd92ad0e9d.jpg" alt="야구장 주변 추천숙소 할인"></a></li>
		         </ul>
		     </section>
			</div>
			<!-- //EVENT -->
			<!-- Ad-->
			<div class="ad_ask">
			    <ul class="pc">
			        <li>
			            <a href="${cpath }" onclick="alert('요기어때 프로젝트');">
		                	<img src="https://image.goodchoice.kr/images/web_v3/ad_01_171013.png">
		                </a>
		            </li>
		            <li>
		                <a href="${cpath }"><img src="https://image.goodchoice.kr/images/web_v3/ad_02_171013.png"></a>
		            </li>
			        </ul>
			    </div>
			</div>
			<!-- //Ad-->
	
    <script>
    	const liarray = Array.from(document.querySelectorAll('.main_link > ul > li'))
    	const subtn = document.querySelector('.selectctg > div > button')	// 검색 버튼
    	const dnbtn = document.querySelector('.many > .cnt_people > .dn')
    	const upbtn = document.querySelector('.many > .cnt_people > .up')
    	const wherebtn = document.querySelector('.btn_loc')
    	const countbtn = document.querySelector('.btn_many')
    	const loarray = Array.from(document.querySelectorAll('.selectctg > ul > li'))
    	
    	liarray.forEach(li => li.addEventListener('click', mainLiHandler))
    	setInterval(slide, 3000)
    	dnbtn.addEventListener('click', dncount)
    	upbtn.addEventListener('click', upcount)
    	wherebtn.addEventListener('click', clickwhere)
    	countbtn.addEventListener('click', clickmany)
		loarray.forEach(lo => lo.addEventListener('click', locationHandler))
		subtn.addEventListener('click', searchHandler)
    </script>
    
    <script>
	$('#daterangepicker').daterangepicker({
	   "locale": {
	      linkedCalendars: true,
	      autoUpdateInput: true,
	      showCustomRangeLabel: true,
	      "format" : "YYYY-MM-DD",
	      "separator": "~",
	      "applyLabel": "확인",
	      "cancelLabel": "취소",
	      "fromLabel": "From",
	      "toLabel": "To",
	      "customRangeLabel": "Custom",
	      "weekLabel": "W",
	      "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
	      "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
	      
	   },
	   "startDate": new Date(),
	   "endDate": new Date(),
	   "drops": "auto",
	   "minDate": new Date()
	   
	}, function (start, end, label) {
	   console.log('New date range selected:' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
	});
	
	const dateBtn = document.querySelector('.applyBtn')
	dateBtn.addEventListener('click', getDateHandler)
</script>



<%@ include file="main/footer.jsp" %>

</body>
</html>
