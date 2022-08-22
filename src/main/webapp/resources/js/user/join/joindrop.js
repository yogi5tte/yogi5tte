'use strict';


function chkHandler(event) {
	
//	console.log(1)
	// 하위 6개 버튼
	const item = Array.from(document.querySelectorAll('.terms_checkbox'))
	
	// password 입력 input
	const password = document.getElementById('password')
	
	// 다음 버튼
	const nextbtn = document.querySelector('.btn_link')
	
	console.log(item.filter(i => i.checked).length)
	
	
	let allflag = (item[0].checked || item[1].checked || item[2].checked || item[3].checked || item[4].checked || item[5].checked)
	if(item.filter(i => i.checked).length != 0 && password.value != '') {
		nextbtn.classList.add('fill_red')
	}
	else {
		nextbtn.classList.remove('fill_red')
	}
   	
}


function checkOnlyOne(element) {
	const checkBoxes = document.getElementsByName('check_inp') // getElementByName으로 부르면 배열 형태로 불러올 수 있다
	
	checkBoxes.forEach((cb) => {
		cb.checked = false; // 불러온 checkbox들을 다 풀고
	})
	
	element.checked = true; // 파라미터로 전달된 체크박스가 선택되도록 한다(onclick 요소를 통해 체크되면 그 체크박스의 파라미터가 전달된다)
}


function btnHandler(event) {
	// 하위 6개 버튼
	const item = document.querySelectorAll('.terms_checkbox')
	const nextbtn = document.querySelector('.btn_link')
	
	let allflag = (item[0].checked || item[1].checked || item[2].checked || item[3].checked || item[4].checked || item[5].checked)
	
	const ob = {}
	let target = document.forms[0]
	const formData = new FormData(target)
	
	for(let key of formData.keys()){
		ob[key] = formData.get(key)
	}
	console.log(ob)
	const url = cpath + "/user/joinDrop"
	const opt = {
			method:'POST',
			body: JSON.Stringify(formData),
			headers: {
				'Content-Type' : 'application/json;charset=utf-8'
			}
	}
	fetch(url,opt)
	.then(resp=>resp.text())
	
		
	
}


