'use strict';

function sendHandler(event) {
	event.preventDefault()
	alert('이메일로 인증을 보냅니다')
	authForm.classList.remove('hidden')
	authForm_btn.classList.remove('hidden')
	authForm.querySelector('input').focus()
	
	const ob = {}
	const formData = new FormData(event.target)
	
	for(let key of formData.keys()){
		ob[key] = formData.get(key)
		console.log(ob[key])
	}
	let url = cpath + '/user/join2'
	
 	fetch(url,{
 		method: 'POST',
 		body : ob.email,
 		headers:{
 			'Content-Type': 'text/plain;charset=utf-8'
 		}
 	})
 	.then(resp=>resp.text())
 	.then(text=>{
 		
 		sessionStorage.setItem('confirm',text)
 	})
 	sendMailForm.querySelector('input').setAttribute('disabled','disabled')
}

function authHandler(event) {
	event.preventDefault()
	
	const ob = {}
	const formData = new FormData(event.target)
	for(let key of formData.keys()){
		ob[key] = formData.get(key)
	}
	console.log(ob['authNumber'])
	console.log(sessionStorage.getItem('confirm'))
	
	if(ob['authNumber'] == (sessionStorage.getItem('confirm'))){
		alert('인증되었습니다')
		location.href = cpath + '/user/join3'
	}else{
		alert('인증 실패')
	}
}
