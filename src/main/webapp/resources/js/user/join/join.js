'use strict';


function checkHandler(event) {
    // 전체 동의 버튼
    const allchkbox = document.getElementById('checkAll')
    
    // 하위 버튼들
    const checkbox = document.querySelectorAll('.terms_checkbox')
    
    // 다음 버튼
    const nextbtn = document.querySelector('.btn_link')
	
    let flag = false
    
	for(let i = 0; i < checkbox.length; i++) {
		checkbox[i].checked = event.target.checked
        flag = checkbox[i].checked
	}
   	if(flag) {
    	nextbtn.classList.add('gra_left_right_red')
   	}
   	if(flag == false) {
   		nextbtn.classList.remove('gra_left_right_red')
   	}         
}


function chkHandler(event) {
	// 전체 동의 버튼
	const checkAll = document.getElementById('checkAll')
	
	// 하위 6개 버튼
	const item = document.querySelectorAll('.terms_checkbox')
	
	// 다음 버튼
	const nextbtn = document.querySelector('.btn_link')
	
	// 하위 6개 버튼 중 필수 요소 3개가 체크되면
	let flag = (item[0].checked && item[1].checked && item[2].checked)
	if(flag) {
    	nextbtn.classList.add('gra_left_right_red') // 다음 버튼에 색이 변하는 클래스를 추가해라
   	}
   	if(flag == false) { // 필수 요소 3개중 하나라도 체크되지 않으면
   		nextbtn.classList.remove('gra_left_right_red') // 다음 버튼에 색이 변하는 클래스를 제거해라
   	}
   	
   	// 하위 6개 버튼이 모두 체크되면
	allflag = (item[0].checked && item[1].checked && item[2].checked && item[3].checked && item[4].checked && item[5].checked)
	if(allflag) {
		checkAll.checked = true // 전체 동의 체크박스도 체크해라
	}
	else { // 하위 6개 버튼 중 하나라도 체크되지 않으면
		checkAll.checked = false // 전체 동의 체크박스 체크를 풀어라
	}
   	
}

function btnHandler(event) {
	// 하위 6개 버튼
	const item = document.querySelectorAll('.terms_checkbox')
	const allchkbox = document.getElementById('checkAll')
	
	// 하위 6개 버튼 중 필수 요소 3개가 체크되면
	let flag = (item[0].checked && item[1].checked && item[2].checked)
	let highFlag = allchkbox.checked
	
	
	if(flag || highFlag) {
		location.href = cpath + '/user/join2'
	}
}