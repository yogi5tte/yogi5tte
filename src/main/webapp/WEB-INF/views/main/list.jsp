<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/list.css">
	
		<form>
			<div class="listpage">
				<!-- 상단 -->
				<div class="sub_top_wrap">
					<div class="sub_top">
						<h2></h2>
						<div class="area">
							<div class="btn_area">
<!-- 								<span>서울</span>강남/역삼/삼성/논현 -->
							</div>
						</div>
					</div>
				</div>
				<!-- 메인 시작-->
				<div class="sub_wrap">
					<!-- 지역 검색 -->
					<div class="area_pop">
						<div class="area_wrap">
							<div class="iscroll_01">
								<div class="scroller">
									<ul class="city">
										<li><p class="on">서울</p></li>
										<li><p>부산</p></li>
									</ul>
								</div>
							</div>
							<div class="iscroll_02">
								<div class="scroller">
									<ul class="city_child on">
									    <li><p>강남/역삼/삼성/논현</p></li>
									    <li><p>서초/신사/방배</p></li>
									    <li><p>잠실/방이</p></li>
									    <li><p>잠실새내/신천</p></li>
									    <li><p>영등포/여의도</p></li>
									    <li><p>구로/금천/오류/신도림</p></li>
									    <li><p>강서/화곡/까치산역/목동</p></li>
									    <li><p>천호/길동/둔촌</p></li>
									    <li><p>서울대/신림/사당/동작</p></li>
									    <li><p>종로/대학로</p></li>
									</ul>
									<ul class="city_child">
									    <li><p>해운대/재송</p></li>
									    <li><p>송정/기장/정관</p></li>
									    <li><p>서면/초읍/양정/부산시민공원/범천</p></li>
									    <li><p>남포동/부산역/송도/영도/범일동</p></li>
									    <li><p>광안리/수영/민락</p></li>
									    <li><p>경성대/대연/용호/문현</p></li>
									    <li><p>동래/온천장/부산대/구서/사직</p></li>
									    <li><p>연산/토곡</p></li>
									    <li><p>사상(공항경전철)/학장/엄궁</p></li>
									    <li><p>강서/하단/사하/명지/신호/다대포</p></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- 좌측 카테고리 및 날짜 선택 -->
					<form>
						<div class="filter_wrap">
							<section class="date_wrap">
								<h3>날짜</h3>
								<div class="btn_date">
									<input type="text" id="daterangepicker">
								</div>
							</section>
							<h3>상세 조건</h3>
							<div class="btn_wrap">
								<button type="button" onClick="window.location.reload()">초기화</button>
								<button type="submit">적용</button>
							</div>
							<section>
								<strong>카테고리</strong>
								<ul>
									<li>
										<input type="checkbox" id="ctg_0" class="inp_chk">
										<label for="ctg_0" class="label_chk">무인텔</label>
									</li>
									<li>
										<input type="checkbox" id="ctg_1" class="inp_chk">
										<label for="ctg_1" class="label_chk">거울룸</label>
									</li>
									<li>
										<input type="checkbox" id="ctg_2" class="inp_chk">
										<label for="ctg_2" class="label_chk">야외테라스</label>
									</li>
									<li>
										<input type="checkbox" id="ctg_3" class="inp_chk">
										<label for="ctg_3" class="label_chk">복층룸</label>
									</li>
									<li>
										<input type="checkbox" id="ctg_4" class="inp_chk">
										<label for="ctg_4" class="label_chk">트윈베드</label>
									</li>
									<li>
										<input type="checkbox" id="ctg_5" class="inp_chk">
										<label for="ctg_5" class="label_chk">스파/월풀</label>
									</li>
									<li>
										<input type="checkbox" id="ctg_6" class="inp_chk">
										<label for="ctg_6" class="label_chk">사우나찜질방</label>
									</li>
									<li>
										<input type="checkbox" id="ctg_7" class="inp_chk">
										<label for="ctg_7" class="label_chk">안마의자</label>
									</li>
								</ul>
							</section>
							<section>
								<strong>인원</strong>
								<div class="cnt_people" data-min="2" data-max="10" data-def="2">
									<button type="button" class="dn">-</button>
									<input type="hidden" id="persons" name="persons"><span id="result">1</span>
									<button type="button" class="up">+</button>
								</div>
							</section>			
						</div>
					</form>
					<!-- 목록 -->
					<div class="list_wrap">
						<div class="top_sort">
							<div class="pc">
								<div class="btn_wrap">
									<button type="button" data-sort="LOWPRICE" class="on"><span class="sp">가격 낮은 순</span></button>
									<button type="button" data-sort="HIGHPRICE"><span class="sp">가격 높은 순</span></button>
								</div>
								<button type="button" class="btn_map">지도</button>
							</div>
						</div>
						<div id="product_list_area">
<!-- 							<li class="list_1"> -->
<!-- 								<a href="#"> -->
<%-- 									<p class="pic"><img class="lazy" src="${cpath }/resources/image/roomSample.jpg"></p> --%>
<!-- 									<div class="stage"> -->
<!-- 										<div class="name"> -->
<!-- 											<strong> dto.name </strong> -->
<!-- 											<p class="score"> -->
<!--                        							<em>dto.reviewValue</em>&nbsp;<span>추천해요</span>&nbsp;(dto.reviewNum) -->
<!--                        					    </p> -->
<!-- 											<p>dto.location</p> -->
<!-- 										</div> -->
<!-- 										<div class="price"> -->
<!-- 											<p><b>dto.price원</b></p> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</a> -->
<!-- 							</li> -->
						</div>
					</div>
				</div>
			</div>
		</form>
<%@ include file="footer.jsp" %>
<div id="modal" class="hidden">
	<div id="map"></div>
	<div class="overlay"></div>
</div>

<script>
	const btnArray = Array.from(document.querySelectorAll('.btn_wrap > button'))
	const ctg = document.querySelector('.btn_area')
	const areaPop = document.querySelector('.area_pop')
	
	
	const loArray = Array.from(document.querySelectorAll('.city > li > p'))
	const dloArray = Array.from(document.querySelectorAll('.city_child'))
	const dloOneArray = Array.from(document.querySelectorAll('.city_child > li'))
	
	const overlay = document.querySelector('.overlay')
	const mapbtn = document.querySelector('.btn_map')
	const dnbtn = document.querySelector('.filter_wrap > section > .cnt_people > .dn')
   	const upbtn = document.querySelector('.filter_wrap > section > .cnt_people > .up')
   	
	ctg.addEventListener('mouseover', function(event) {
		areaPop.style.display = 'block'
	})
	areaPop.addEventListener('mouseover', function(event) {
		areaPop.style.display = 'block'
	})
	areaPop.addEventListener('mouseout', function(event) {
		areaPop.style.display = 'none'
	})
	
	btnArray.forEach(btn => btn.addEventListener('click', btnHandler))
	loArray.forEach(lo => lo.addEventListener('mouseover', loHandler))
	// 지역 선택하면 해당 지역 목록만 출력하는 함수
	dloOneArray.forEach(dto => dto.addEventListener('click', clickListHandler))
	// 메인페이지에서 검색후 넘어왔을때 해당 목록 출력하는 함수
	window.addEventListener('load', listHandler)
	overlay.addEventListener('click', closeModal)
	mapbtn.addEventListener('click', openModal)
	dnbtn.addEventListener('click', listDncount)
   	upbtn.addEventListener('click', listUpcount)
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

<script>
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(35.167025, 129.132796),
		level: 5
	};
	
	var map = new kakao.maps.Map(container, options)
</script>

</body>
</html>