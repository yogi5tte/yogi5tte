'use strict';
// 스크롤시 헤더 변경되는 함수
function scrollHandler(event) {
	let target = document.documentElement
	const header = document.querySelector('.header')
	   
	if(target.scrollTop > 0) {
		header.classList.add('scroll')
	}
	else {
		header.classList.remove('scroll')
	}
}
// 대문페이지 숙소 유형 선택하는 함수
function mainLiHandler(event) {
	liarray.forEach(li => li.classList.remove('selected'))

	let target = event.target
   
    while(target.classList.contains('ml') == false) {
    	target = target.parentNode
    }
	target.classList.add('selected')               
//   const index = liarray.indexOf(event.target)            
}
// 대문페이지 이벤트 이미지 슬라이드되는 함수
function slide(event) {
   const wrap = document.querySelector('.swiper-wrapper')

    let num = +wrap.dataset.num
    num += 962

    if(num > 3847) {
        wrap.style.transitionDuration = 'unset'
        num = 0
    }
    else {
        wrap.style.transitionDuration = '0.5s'
    }
    wrap.dataset.num = num

    wrap.style.transform = `translateX(${-num}px)`
}
// top버튼 누르면 제일 위로 올라가는 함수
function scrollToTop(event) {
   let target = document.documentElement
   
   target.scrollTop = 0
}
/* 탭 메뉴 */
function liHandler(event) {
   liarray.forEach(li => li.classList.remove('on'))
   
   event.target.classList.add('on')
   
   const index = liarray.indexOf(event.target)         

    divarray.forEach(div => div.classList.remove('on'))   
    divarray[index].classList.add('on')               
}
// list.jsp 가격 낮은 순, 가격 높은 순 정렬 버튼
function btnHandler(event) {
   btnArray.forEach(btn => btn.classList.remove('on'))
   
   let target = event.target
   
   while(target.classList.contains('sp')) {
      target = target.parentNode
   }
   
   target.classList.add('on')
}
// 사장님 한마디 더보기<->접기
function cmtbtnHandler(event) {
   const div = document.querySelector('.comment > div')
   if(div.classList.contains('clamp')) {
      cmtbtn.innerText = '접기'
         div.classList.remove('clamp')
   }
   else {
      cmtbtn.innerText = '더보기'
         div.classList.add('clamp')
   }
}
// list.jsp 지역 카테고리 선택
function loHandler(event) {

   loArray.forEach(lo => lo.classList.remove('on'))
   
   let target = event.target
   target.classList.add('on')
   
   const index = loArray.indexOf(target)
   
   dloArray.forEach(dlo => dlo.classList.remove('on'))
   dloArray[index].classList.add('on')
}
function listConvert(dto) {
	const li = document.createElement('li')
	li.className = 'list_1'
	
	if(dto.city == 2) {
		dto.city = '부산'
	}
	else {
		dto.city = '서울'
	}
	
	li.innerHTML += `
		<a href="#">
			<p class="pic"><img class="lazy" src=${dto.product_img}></p>
			<div class="stage">
				<div class="name">
					<strong> ${dto.name} </strong>
					<p class="score">
						<em>dto.reviewValue</em>&nbsp;<span>${dto.seller_text}</span>&nbsp;(dto.reviewNum)
				    </p>
					<p>${dto.city} / ${dto.gu}</p>
				</div>
				<div class="price">
					<p><b>${dto.price}원</b></p>
				</div>
			</div>
		</a>
	`
	return li
}
//지역 -> 구 선택하면 해당 지역만 나오는 함수
function clickListHandler(event) {
	const product_list = document.getElementById('product_list_area')
	product_list.innerHTML = ''
	
	// 지역 선택시 버튼 텍스트 바뀌는 기능
	let city = document.querySelector('.city > li > p.on').innerText
	
	dloOneArray.forEach(dlo => dlo.classList.remove('on'))
	event.target.classList.add('on')
//	console.log(event.target.getAttribute('idx'))
	
	let idx = event.target.getAttribute('idx')
	
	let target = event.target.innerText
	
	let btn_area = document.querySelector('.btn_area')
	btn_area.innerHTML = ''
	btn_area.innerHTML += `<span>${city}</span>${target}`
		
	const url = cpath + '/listload/' + idx
	
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
		json.forEach(dto => product_list.appendChild(listConvert(dto)))
	})
	const area_pop = document.querySelector('.area_pop')
	area_pop.style.display = 'none'
}
//메인페이지 검색 함수
function searchHandler(event) {
	event.preventDefault()
	const product_list = document.getElementById('product_list_area')
	let cat = (document.querySelector('.main_link > ul > li.selected').innerText)
	let loc = (document.querySelector('.main_link > .selectctg > .btn_loc > span').innerText)
	let peo = (document.querySelector('.main_link > .selectctg > .btn_many > span').innerText).split('명')[0]
	
	sessionStorage.setItem('cat', cat)
	sessionStorage.setItem('loc', loc)
	sessionStorage.setItem('peo', peo)
	
//	const form = document.createElement('form')
//	form.innerHTML += `<input type="hidden" name="cat" value="${cat}">
//					   <input type="hidden" name="loc" value="${loc}">
//					   <input type="hidden" name="peo" value="${peo}">`
//	const formData = new FormData(form)
//		
//	const url = cpath + '/main'
//	const opt = {
//		method: 'POST',
//		body: formData
//	}
//	fetch(url, opt)
//	.then(resp => resp.json())
//	.then(json => {
//		console.log(json)
//		json.forEach(dto => product_list.appendChild(listConvert(dto)))
//	})
	
	if(loc != '다음 숙소는 어디로?' && peo != '몇명에서 떠나시나요?') {
		location.href = cpath + '/main/list'
	}
	else {
		alert('지역과 인원수를 선택해주세요!')
	}
}

function listLoadHandler(event) {
	const product_list = document.getElementById('product_list_area')
	product_list.innerHTML = ''
		
	let city = document.querySelector('.city > li > p.on').innerText
	let target = document.querySelector('.city_child > li > p.on').innerText
	
	let btn_area = document.querySelector('.btn_area')
	btn_area.innerHTML = ''
	btn_area.innerHTML += `<span>${city}</span>${target}`	
}


// 메인페이지 에서 검색후 목록으로 왔을때 목록 출력하는 함수
function listHandler(event) {
	const product_list = document.getElementById('product_list_area')
	product_list.innerHTML = ''
	// 숙소 유형 카테고리 change
	const title = document.querySelector('.sub_top > h2')
	title.innerText = `${sessionStorage.getItem('cat')}`
	// 인원 change
	const peo = document.getElementById('result')	
	result.innerText = sessionStorage.getItem('peo')
	// 지역 change
	const loc = document.querySelector('.btn_area')
	if(sessionStorage.getItem('loc') == '서울') {
		loc.innerHTML += `<span>${sessionStorage.getItem('loc')}</span>강남/역삼/삼성/논현`
	}
	else {
		loArray.forEach(lo => lo.classList.remove('on'))
		loArray[1].classList.add('on')
		dloArray.forEach(dlo => dlo.classList.remove('on'))
		dloArray[1].classList.add('on')
		dloOneArray.forEach(dlo => dlo.classList.remove('on'))
		let dlooneArray = document.querySelectorAll('.city_child.on > li > p')
		dlooneArray[0].classList.add('on')
		loc.innerHTML += `<span>${sessionStorage.getItem('loc')}</span>해운대/재송`
	}
	
//	const url = cpath + '/listload'
	
//	fetch(url)
//	.then(resp => resp.json())
//	.then(json => {
//		console.log(json)
//		json.forEach(dto => product_list.appendChild(listConvert(dto)))
//	})

}
// 모달 제거하는 함수
function closeModal() {
	document.getElementById('modal').classList.add('hidden')
}
// 목록 페이지 지도 모달 함수
function openModal(event) {
	document.getElementById('modal').classList.remove('hidden')
}
//상세 페이지 객실 이용 안내 모달
function dtopenModal(event) {
	document.getElementById('modal').classList.remove('hidden')
}

// 대문페이지 인원수 감소 함수
function dncount(event) {

   const resultElement = document.getElementById('result');
   const txtResultElement = document.getElementById('txtResult')
   let number = resultElement.innerText
   
   if(number > 1) {
       number = parseInt(number) - 1
   }
   
   txtResultElement.style.color = '#F7323F'
   txtResultElement.innerText = number + '명'
   
   resultElement.innerText = number;
}
// 목록페이지 인원수 감소 함수
function listDncount(event) {
   const resultElement = document.getElementById('result');
   let number = resultElement.innerText
   
   if(number > 1) {
       number = parseInt(number) - 1
   }
   
   resultElement.innerText = number;
}
// 대문 페이지 인원수 증가 함수
function upcount(event) {

   const resultElement = document.getElementById('result');
   const txtResultElement = document.getElementById('txtResult')
   let number = resultElement.innerText
   
   if(number < 4) {
      number = parseInt(number) + 1;
   }
   
   txtResultElement.style.color = '#F7323F'
   txtResultElement.innerText = number + '명'
   
   resultElement.innerText = number

}
// 목록페이지 인원수 감소 함수
function listUpcount(event) {
   const resultElement = document.getElementById('result');
   let number = resultElement.innerText
   
   if(number < 4) {
      number = parseInt(number) + 1;
   }
   
   resultElement.innerText = number
}
// 대문 페이지 숙소 지역 선택하는 함수 
function clickwhere(event) {
   const loc = document.querySelector('.selectctg > .loc')
   
   if(loc.classList.contains('hidden')) {
      loc.classList.remove('hidden')
   }
   else {
      loc.classList.add('hidden')
   }
}
// 대문 페이지 인원 선택하는 함수
function clickmany(event) {

   const many = document.querySelector('.selectctg > .many')
   
   if(many.classList.contains('hidden')) {
      many.classList.remove('hidden')
   }
   else {
      many.classList.add('hidden')
   }

}
function locationHandler(event) {
   let target = event.target
   const chgtxt = document.querySelector('.selectctg > .btn_loc > span')
   const loc = document.querySelector('.selectctg > .loc')
   
   const txt = target.innerText
   
   chgtxt.style.color = '#F7323F'
   chgtxt.innerText = txt
   loc.classList.add('hidden')
   
}
// 상세페이지 이미지 슬라이더 
function move_prev(event) {

   const btmWrap = document.querySelector('.gallery_btm_wrap')
   let btmNum = +btmWrap.dataset.num 
   
   const topWrap = document.querySelector('.gallery_top_wrap')
   let topNum = +topWrap.dataset.num
   
   
   
   if(btmNum > 0){
      btmNum -= 119   
      btmWrap.style.transitionDuration = '0.3s'
      btmWrap.dataset.num = btmNum
      
      
      
      if(btmNum < 952) {
         btmWrap.style.transitionDuration = '0'
         btmWrap.style.transform = `translateX(-${btmNum}px)`   
      }
         
      topNum -= 490
      topWrap.dataset.num = topNum
      topWrap.style.transform = `translateX(-${topNum}px)`
   }
   
   let viewNum = btmNum == 119 ? 2 :(119 + btmNum) / 119 
   const selectDiv = document.querySelector(`.item_img${viewNum}`)
   const selectDivArray = Array.from(document.querySelectorAll('.gallery_btm_wrap > div'))
   selectDivArray.forEach(div => div.classList.remove('selectView'))
   selectDiv.classList.add('selectView')
}
// 상세페이지 이미지 슬라이더
function move_next(event) {

   const btmWrap = document.querySelector('.gallery_btm_wrap')
//   const arr = Array.from(document.querySelectorAll('.item_img'))
   let btmNum = +btmWrap.dataset.num
   
   const topWrap = document.querySelector('.gallery_top_wrap')
   let topNum = +topWrap.dataset.num
   
   if(btmNum < 1309) {
      btmNum += 119
      btmWrap.style.transitionDuration = '0.3s'
      btmWrap.dataset.num = btmNum
      
      if(btmNum < 1071) btmWrap.style.transform = `translateX(${-btmNum}px)`
      
//         arr.push(arr.shift())   
         
      topNum += 490
      topWrap.dataset.num = topNum
      topWrap.style.transform = `translateX(${-topNum}px`
   }
   
   let viewNum = btmNum == 1309 ? 12 :(119 + btmNum) / 119
   const selectDiv = document.querySelector(`.item_img${viewNum}`)
   const selectDivArray = Array.from(document.querySelectorAll('.gallery_btm_wrap > div'))
   selectDivArray.forEach(div => div.classList.remove('selectView'))
   selectDiv.classList.add('selectView')
}

// 예약 인터셉터 핸들러
function interceptorHandler(event) {
   let login = sessionStorage.getItem('login')
   
   if(login == null) {
      alert('로그인 먼저 하시오')
      location.href = cpath + '/user/login'
   }
   else {
      location.href = cpath + '/rsvn/reservation'
   }
}

// 숙소 정보 모달 
function closeModal() {
   document.getElementById('modal').classList.add('hidden')
}
function openModal(event) {
   document.getElementById('modal').classList.remove('hidden')
}
function dtopenModal(event) {
   document.getElementById('modal').classList.remove('hidden')

	const btmWrap = document.querySelector('.gallery_btm_wrap')
//	const arr = Array.from(document.querySelectorAll('.item_img'))
	let btmNum = +btmWrap.dataset.num
	
	const topWrap = document.querySelector('.gallery_top_wrap')
	let topNum = +topWrap.dataset.num
	
	if(btmNum < 1309) {
		btmNum += 119
		btmWrap.style.transitionDuration = '0.3s'
		btmWrap.dataset.num = btmNum
		
		if(btmNum < 1071) btmWrap.style.transform = `translateX(${-btmNum}px)`
		
//			arr.push(arr.shift())	
			
		topNum += 490
		topWrap.dataset.num = topNum
		topWrap.style.transform = `translateX(${-topNum}px`
	}
	
	let viewNum = btmNum == 1309 ? 12 :(119 + btmNum) / 119
	const selectDiv = document.querySelector(`.item_img${viewNum}`)
	const selectDivArray = Array.from(document.querySelectorAll('.gallery_btm_wrap > div'))
	selectDivArray.forEach(div => div.classList.remove('selectView'))
	selectDiv.classList.add('selectView')
}
// 메인페이지 검색 함수
function searchHandler(event) {
	event.preventDefault()
	
	let cat = (document.querySelector('.main_link > ul > li.selected').innerText)
	let loc = (document.querySelector('.main_link > .selectctg > .btn_loc > span').innerText)
	let peo = (document.querySelector('.main_link > .selectctg > .btn_many > span').innerText).split('명')[0]
	
	sessionStorage.setItem('cat', cat)
	sessionStorage.setItem('loc', loc)
	sessionStorage.setItem('peo', peo)
	
	if(loc != '다음 숙소는 어디로?' && peo != '몇명에서 떠나시나요?') {
		location.href = cpath + '/main/list'
	}
	else {
		alert('지역과 인원수를 선택해주세요!')
	}
	
}

function reviewScrollHandler(event) {
	if(event.target.scrollTop + event.target.clientHeight >= event.target.scrollHeight) {
		const Ul = document.querySelector('.review_scroll > ul')
		for(let i= 0; i < 5; i++) {
			Ul.innerHTML += `<li>
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
		</li>`
		}
	}
}



// 숙소 정보 모달 
function closeModal() {
	document.getElementById('modal').classList.add('hidden')
}
function openModal(event) {
	document.getElementById('modal').classList.remove('hidden')
}
function dtopenModal(event) {
	document.getElementById('modal').classList.remove('hidden')
}
function getDateHandler(event) {
	 let startDate = new Date($('#daterangepicker').data('daterangepicker').startDate['_d'])
	 let endDate = new Date($('#daterangepicker').data('daterangepicker').endDate['_d'])
	 let difference = endDate.getTime() - startDate.getTime()
	
	 if( difference/(1000 * 3600 * 24)  > 8) {
		 alert('최대 7박까지만 가능합니다')
		 location.reload()
	 }
}