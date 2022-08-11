'use strict';


function btnHandler(event) {
	const terms = document.getElementById('terms')
	
	if(terms.checked){
		location.href = '${cpath}/join2'	
	}
}

function termsHandler(event) {
	const terms = document.getElementById('terms')
	const btn = document.querySelector('.button')
	
	if(terms.checked) {
		btn.disabled = false;
	}
	else {
		btn.disabled = true;
	}
}
