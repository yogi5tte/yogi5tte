'use strict';


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

function scrollToTop(event) {
	let target = document.documentElement
	
	target.scrollTop = 0
}