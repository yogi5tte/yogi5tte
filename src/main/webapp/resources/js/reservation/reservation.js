'use strict';

function closeModal(event){
	document.querySelector('.reservation_modal').classList.add('hidden')
}

function inspectConditions(){
	event.preventDefault()
	let check = document.forms[0]
	const agreeCheckAll = document.querySelector('#reservation_agree> label > input[name=agree_all]')
	if(check.userName.value==""){
		alert("예약자 이름을 작성해주세요")
		check.userName.focus();
		return false;
	}
	if(check.phoneNumber.value==""){
		alert("전화번호를 작성해주세요")
		check.phoneNumber.value.focus();
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

/*모달에서 이벤트 실행(취소, 결제) -민철
let target = event.target
if(target.classList.contains('mo_cancel')){
	closeModal(event)
	return
}
if(target.classList.contains('mo_move_payment')){
	kakaopaymentReady(event)
	return
}
*/
//url, opt fetch - 민철
/*const reservation_idx =target.getAttribute('idx')

const url = cpath + '/reservation/' + idx
const opt = {
	method="GET",
	headers={
			'Content-Type' : 'application/json;charset=utf-8'
			
	}
}
fetch(url,opt)
.then(resp=>resp.json())
.then(json=>{
*/
	const item = document.querySelector('.modal_content')
	//modal.classList.toggle("hidden")
		item.innerHTML = `<div class="mo_content_info">`
		item.innerHTML += `<strong class="mo_info">예약내역 확인</strong>`
		
		item.innerHTML += `<hr>`
		
		item.innerHTML += `<div class="mo_content_info">`
			
		item.innerHTML += `<p class="mo_info_product">{dto.product}</p>`
		item.innerHTML += `<p class="mo_info_roomName">{dto.roomName} / {dto.day}박</p>`
		
		item.innerHTML += `<p class="mo_info_check_in"><span>체크인</span><strong>{dto.check_in}</strong></p>`
		item.innerHTML +=`<p class="mo_info_check_out"><span>체크아웃</span><strong>{dto.check_out}</strong></p>`
		item.innerHTML += `<hr>`
			
		item.innerHTML += `<ul><li><span>취소 및 환불이 불가<span>합니다.</li><br><li>예약 후 15분 이내 고객행복센터로 취소 요청 시 100% 환불 가능합니다.</li></ul>`
		
		item.innerHTML += `</div>`
		item.innerHTML += `<hr>`
		
		item.innerHTML += `<div class="mo_btn"><button class="mo_cancel"><span id="cancel">취소</span></button><button class="mo_move_payment"><span>동의 후 결제</button></a></div>`
		
			
		document.querySelector('.reservation_modal').classList.remove('hidden')
		
		const mo_cancel = document.querySelector('.mo_cancel')
		mo_cancel.addEventListener('click',closeModal)
		
		const mo_move_payment = document.querySelector('.mo_move_payment')
		mo_move_payment.addEventListener('click',kakaopaymentReady)
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