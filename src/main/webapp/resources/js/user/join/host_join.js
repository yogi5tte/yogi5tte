'use strict';


function submitHandler(event) {
	event.preventDefault()
	
	const ob = {}
	const formData = new FormData(event.target)
	for(let key of formData.keys()){
		ob[key] = formData.get(key)
	}
	const url = cpath + '/user/host_join'
	const opt = {
			method: 'POST',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
		}
	console.log(opt)
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => location.href = cpath + text)
}


function sendHandler(event) {
	event.preventDefault()
	alert('이메일로 인증을 보냅니다')
	
	const ob = {}
	const formData = new FormData(event.target)
	for(let key of formData.keys()){
		ob[key] = formData.get(key)
	}
	const url = cpath + '/user/host_send'
	const opt = {
			method: 'POST',
			body: ob.email,
			headers: {
				'Content-Type' : 'text/plain;charset=utf-8'
			}
		}
	console.log(opt)
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		sessionStorage.setItem('confirm', text)
	})
}

function authHandler(event) {
	event.preventDefault()
	
	const ob = {}
	const formData = new FormData(event.target)
	for(let key of formData.keys()) {
		ob[key] = formData.get(key)
	}
	
	if(ob['authNumber'] == (sessionStorage.getItem('confirm'))) {
		alert('인증되었습니다')
		location.href = cpath + '/user/host_join2'
	}
	else {
		alert('인증 실패')
	}
}

