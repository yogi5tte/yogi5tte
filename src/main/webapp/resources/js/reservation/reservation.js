'use strict';

function closeModal(event){
	document.querySelector('.reservation_modal').classList.add('hidden')
}

function inspectConditions(){
	event.preventDefault()
	let check = document.forms[0]
	let nameCheck = /^[가-힣a-zA-Z]+$/;
	let telCheck = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;
	const agreeCheckAll = document.querySelector('#reservation_agree> label > input[name=agree_all]')
	if(check.userName.value==""){
		alert("예약자 이름을 작성해주세요")
		check.userName.focus();
		return false;
	}
	if(nameCheck.test(check.userName.value) === false){
		alert("예약자 이름은 한글,영문만 입력 가능합니다")
		check.userName.focus();
		return false;
	}
	if(check.phoneNumber.value==""){
		alert("전화번호를 작성해주세요")
		check.phoneNumber.value.focus();
		return false;
	}
	if(telCheck.test(check.phoneNumber.value)=== false){
		alert("'010-xxxx-xxxx'형태로 입력해주세요.")
		check.phoneNumber.focus();
		return false;
	}
	if(agreeCheckAll.checked === false){
		alert("약관 동의를 모두 체크해주세요")
		check.userName.focus();
		return false;
	}else{
		openModal(event);
	}
}


function openModal(event){

		
		const item = document.querySelector('.modal_content')
		
		item.innerHTML = `<div class="mo_content_info">`
		item.innerHTML += `<strong class="mo_info">예약내역 확인</strong>`

		item.innerHTML += `<hr>`

		item.innerHTML += `<div class="mo_content_info">`

		item.innerHTML += `<p class="mo_info_product">${name}</p>`
		item.innerHTML += `<p class="mo_info_roomName">${roomName} / ${quantity}박</p>`

		item.innerHTML += `<p class="mo_info_check_in"><span>체크인</span><strong>${check_in}</strong></p>`
		item.innerHTML +=`<p class="mo_info_check_out"><span>체크아웃</span><strong>${check_out}</strong></p>`
		item.innerHTML += `<hr>`

		item.innerHTML += `<ul><li><span>취소 및 환불이 불가<span>합니다.</li><br><li>예약 후 15분 이내 고객행복센터로 취소 요청 시 100% 환불 가능합니다.</li></ul>`

		item.innerHTML += `</div>`
		item.innerHTML += `<hr>`
														
		item.innerHTML += `<div class="mo_btn"><button class="mo_cancel"><span id="cancel">취소</span></button><button onclick="insertRsvnHandler(),kakaopaymentReady()" class="mo_move_payment" ><span>동의 후 결제</button></a></div>`
			
															
	document.querySelector('.reservation_modal').classList.remove('hidden')
	
	const mo_cancel = document.querySelector('.mo_cancel')
	mo_cancel.addEventListener('click',closeModal)
	
}

	 async function insertRsvnHandler(event){
//		event.preventDefault()
//		let target = event.target
		let target = document.forms[0]
		const formData = new FormData(target)
		const pList = document.querySelectorAll('.rsvn_el')
		
		const ob = {}
		
		for(let key of formData.keys()){
			ob[key] = formData.get(key)
		}
		//v -> div의 value 
		for(let v of pList){
//			console.log(v.id, v.innerText)
			ob[v.id] = v.innerText
		}
		
		console.log(ob)
		
		
		const url = cpath + '/rsvn/reservation'
		const opt = {
			method : 'POST',
			body : JSON.stringify(ob),
			headers:{
				'Content-type': 'application/json;charset=utf-8'
			}
		}
		await fetch(url,opt)
		.then(resp=>resp.text())
//		.then(text=>{
//			if(text == 1){
//				let click_event = new Event("click")
//				event.target.dispatchEvent(click_event);
//				event.target.addEventListener('click',kakaopaymentReady)
//			}
//		})
		
	}

	
	//전체 동의 후, 개별 동의 1개라도 체크가 안되어있을 시, 전체동의 체크 풀리는 핸들러(민철)
	function checkAll(){
	
	const agreeCheckAll = document.querySelector('#reservation_agree> label > input[name=agree_all]')
	const agreeArray = document.querySelectorAll('#reservation_agree> label > input[name=agree]')
	if(event.target.checked === false){
		agreeCheckAll.checked = false;
	}
	
	
	//개별 동의가 모두 체크되었을 시 전체 동의 자동 체크 (민철)
	const allflag = (agreeArray[0].checked&&
			agreeArray[1].checked&&
			agreeArray[2].checked&&
			agreeArray[3].checked
	)
	if(allflag){
		agreeCheckAll.checked = true
	}else{
		agreeCheckAll.checked = false
	}
}
	//전체 동의를 체크하면, 개별 체크가 전부 체크 되는 핸들러(민철)
	function checkHandler(event){

	const agreeArray = document.querySelectorAll('#reservation_agree> label > input[name=agree]')
	const target = event.target
	for(let i = 0; i < agreeArray.length; i++){
		agreeArray[i].checked = target.checked;
	}

	/*if(target.checked)	agreeArray.forEach(box => box.setAttribute('checked', ''))
	else 				agreeArray.forEach(box => box.removeAttribute('checked'))
	*/
	}
	

	
	
	