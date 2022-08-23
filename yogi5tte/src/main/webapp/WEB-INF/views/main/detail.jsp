<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/stylecss/main/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/main/detail.css">


<!-- 달력 소스  -->
<link rel="stylesheet" type="text/css" media="all" href="${cpath }/resources/stylecss/main/daterangepicker.css" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.min.js"></script>
<script type="text/javascript" src="${cpath }/resources/js/main/daterangepicker.js"></script>

<!-- 지도 소스 -->
<script>
	var longtitude = +'${info.longtitude}'
	var latitude = +'${info.latitude}'
	var name = '${info.name}'
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35832996ddcf2ae6df4b95be1e09b25a&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="${cpath }/resources/js/main/map.js"></script>


		<div id="content" class="detail">
			<div class="top">
		    	<div class="left">
		        	<div class="gallery_pc">
		            	<div class="gallery_top">

							<div class="gallery_top_wrap" data-num="0">
								<div class="item_Limg1" ><img src="${cpath }/resources/image/센텀드림월드1.jfif"></div>
								<div class="item_Limg2" ><img src="${cpath }/resources/image/센텀드림월드2.jfif"></div>
								<div class="item_Limg3" ><img src="${cpath }/resources/image/센텀드림월드3.jfif"></div>
								<div class="item_Limg4" ><img src="${cpath }/resources/image/센텀드림월드4.jfif"></div>
								<div class="item_Limg5" ><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_Limg6" ><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_Limg7" ><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_Limg8" ><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_Limg9" ><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_Limg10" ><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_Limg11" ><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_Limg12" ><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
							</div>
		            	</div>
			            <div class="gallery_btm">
							<div class="gallery_btm_wrap" data-num="0">
								<div class="item_img1 selectView" ><img src="${cpath }/resources/image/센텀드림월드1.jfif"></div>
								<div class="item_img2" ><img src="${cpath }/resources/image/센텀드림월드2.jfif"></div>
								<div class="item_img3" ><img src="${cpath }/resources/image/센텀드림월드3.jfif"></div>
								<div class="item_img4" ><img src="${cpath }/resources/image/센텀드림월드4.jfif"></div>
								<div class="item_img5" ><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_img6" ><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_img7" ><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_img8" ><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_img9" ><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_img10" ><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_img11" ><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_img12" ><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
							</div>
							
			            </div>
			          <button class="button_prev"></button>
			            <button class="button_next"></button>
		        	</div>
		    	</div>
		    	<div class="right">
		        	<div class="info">
		            <h2>${info.name }</h2>
		            <div class="score_cnt">
		                <span>9.7</span>
						최고에요<b id="review_cnt">&nbsp;리뷰<em>${info.review_count }개</em></b>
		            </div>
		            <p class="address">더미 주소</p>
		        	</div>
		            <!-- 업체 이벤트 -->
					<div class="map" id="map">
					    
		            </div>
		            <div class="comment"><strong>사장님 한마디</strong><button>더보기</button>
                		<div class="clamp">${info.seller_text }<br>
							
						</div>
            		</div>
		        </div>
	    	</div>
		</div>
	
	<div class="tab">
		<button class="on">객실안내/예약</button>
        <button>숙소정보</button>
        <button class="tab_review">리뷰</button>
	</div>
	
	<div class="div_tab">
		<div class="on">
			<form>
				<article class="room_info">
					<div class="btn_date">
					<input id="daterangepicker" type="text" placeholder="예약날짜">
					</div>
					<div class="room">
							<p class="pic_view"><img class="lazy" src="${cpath }/resources/image/${room[0].room_img}"></p>
							<strong class="title">${room[0].name }</strong>
							<div class="info">
								<div class="motel">
									<div class="price">
										<strong>가격</strong>
										<div>
											<p><b>${room[0].price }원</b></p>
										</div>
										<button type="button">객실 이용 안내</button>
									</div>
									<button type="button" onclick="location.href='${cpath}/rsvn/reservation'" class="gra_left_right_red">예약</button>
								</div>
							</div>
						</div>
						<div class="room">
							<p class="pic_view"><img class="lazy" src="${cpath }/resources/image/${room[1].room_img}"></p>
							<strong class="title">${room[1].name }</strong>
							<div class="info">
								<div class="motel">
									<div class="price">
										<strong>가격</strong>
										<div>
											<p><b>${room[1].price }원</b></p>
										</div>
										<button type="button">객실 이용 안내</button>
									</div>
									<button type="button" onclick="location.href='${cpath}/rsvn/reservation'" class="gra_left_right_red">예약</button>
								</div>
							</div>
						</div>
						<div class="room">
							<p class="pic_view"><img class="lazy" src="${cpath }/resources/image/${room[2].room_img}"></p>
							<strong class="title">${room[2].name }</strong>
							<div class="info">
								<div class="motel">
									<div class="price">
										<strong>가격</strong>
										<div>
											<p><b>${room[2].price }원</b></p>
										</div>
										<button type="button">객실 이용 안내</button>
									</div>
									<button type="button" onclick="location.href='${cpath}/rsvn/reservation'" class="gra_left_right_red">예약</button>
								</div>
							</div>
						</div>
						<div class="room">
							<p class="pic_view"><img class="lazy" src="${cpath }/resources/image/${room[3].room_img}"></p>
							<strong class="title">${room[3].name }</strong>
							<div class="info">
								<div class="motel">
									<div class="price">
										<strong>가격</strong>
										<div>
											<p><b>${room[3].price }원</b></p>
										</div>
										<button type="button">객실 이용 안내</button>
									</div>
									<button type="button" onclick="location.href='${cpath}/rsvn/reservation'" class="gra_left_right_red">예약</button>
								</div>
							</div>
						</div>
				</article>
			</form>
		</div>
		<div>
			<article class="detail_info">
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								기본정보 및 요금정보
					    </button>
					    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						    <div class="accordion-body">
						    	<section class="default_info" style="display: block;">
									<ul>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
									</ul>
						        </section>
						    </div>
					    </div>
					</div>
					<div class="accordion-item">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							편의시설 및 서비스
						</button>
					    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<section class="table_wrap">
						    		<ul>
						    			<li class="theme_1">와이파이</li>
						    			<li class="theme_2">카페</li>
						    			<li class="theme_3">TV</li>
						    			<li class="theme_4">에어컨</li>
						    			<li class="theme_5">객실 샤워실</li>
						    			<li class="theme_6">드라이기</li>
						    			<li class="theme_7">금연</li>
										
						    		</ul>
						    	</section>
					      	</div>
					    </div>
					</div>
				</div>
			</article>
		</div>
		<div>
			<article class="review">
				<div class="score_top">
					<strong>추천해요</strong>
					<div class="score_wrap">
						<div class="score_star star_45"></div>
						<div class="num">9.3</div>
					</div>
					<p>
						전체 리뷰 <b>777</b>
						<span>|</span>
						제휴점 답변 <b>777</b>
					</p>
				</div>
				<div class="review_scroll">
				<ul>
				
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
							<hr>
					</li>
				
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
						<hr>
					</li>
				</ul>
				</div>
			</article>
		</div>
	</div>
<%@ include file="footer.jsp" %>
	
<!-- Modal -->
<div id="modal" class="hidden">
	<div class="content">
		<div class="fix_title">
			객실 이용 안내
			<button>닫기</button>
		</div>
		<div class="iscroll_up">
			<div class="scroller">
				<section>
					<strong>기본 정보</strong>
					<ul class="dot_txt">
						<li>기본정보1</li>
						<li>기본정보2</li>
						<li>기본정보3</li>
						<li>기본정보4</li>
					</ul>
				</section>
				<section>
					<strong>편의 시설</strong>
					<ul class="dot_txt">
						<li>TV, 쇼파, 금고, 옷장, 에어컨, 냉장고, 고급식기류, 욕조, 어메니티, 헤어드라이기, 세제, 누하스 안마의자 (일부객실), 커피머신, 몽제 매트리스 제공</li>
					</ul>
				</section>
				<section>
					<strong>선택 날짜</strong>
					<ul class="dot_txt">
						<li></li>
					</ul>
				</section>
			</div>
		</div>
	</div>
	<div class="overlay"></div>
</div>
<!-- Modal -->

<script>
	const liarray = Array.from(document.querySelectorAll('.tab > button'))
	const divarray = Array.from(document.querySelectorAll('.div_tab > div'))
	const btn = document.querySelectorAll('.tab > button')
	
	liarray.forEach(li => li.addEventListener('click', liHandler))	
	
	const cmtbtn = document.querySelector('.comment > button')
	const exitBtn = document.querySelector('.fix_title > button')
	const overlay = document.querySelector('.overlay')
	const infbtnArray = Array.from(document.querySelectorAll('.price > button'))
	
	cmtbtn.addEventListener('click', cmtbtnHandler)
	exitBtn.addEventListener('click', closeModal)
	overlay.addEventListener('click', closeModal)
	infbtnArray.forEach(button => button.addEventListener('click', dtopenModal))
	
	
	const nextBtn = document.querySelector('.button_next')
	nextBtn.onclick = move_next
	const prevBtn = document.querySelector('.button_prev')
	prevBtn.onclick = move_prev
	
	const reviewBox = document.querySelector('.review_scroll')
	reviewBox.addEventListener('scroll',reviewScrollHandler)
	
	
</script>

<!-- 달력 호출 함수 -->
<script>
let sysDate = new Date()
sysDate.setDate(sysDate.getDate()+1)
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
	"endDate": sysDate,
	"drops": "auto",
	"minDate": new Date(),
})
 const dateBtn = document.querySelector('.applyBtn')
 dateBtn.addEventListener('click', getDateHandler)
</script>

<!-- 지도 호출 함수 -->
<script>


var container = document.getElementById('map')
var options = {
	center: new kakao.maps.LatLng(longtitude, latitude),
	level: 3
}
var map = new kakao.maps.Map(container, options)
marker.setMap(map)
kakao.maps.event.addListener(marker, 'click', function(){
	infowindow.open(map, marker)
});
//clusterer.addMarker(marker)
</script>

</body>
</html>