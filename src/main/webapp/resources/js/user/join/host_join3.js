'use strict';

function sendHandler(event) {
	event.preventDefault()
	alert('이메일로 인증을 보냅니다')
	authForm.querySelector('input').focus()
	
	const ob = {}
	const formData = new FormData(event.target)
	
	for(let key of formData.keys()){
		ob[key] = formData.get(key)
		console.log(ob[key])
	}
	let url = cpath + '/host_join3'
	
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