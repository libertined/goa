window.addEventListener('scroll', stickAside.bind(null, document.querySelector('.interesting'), document.querySelector('.interesting-labels')));

function stickAside(element, fixedBlock) {
	if (window.pageYOffset > element.offsetTop) {
		fixedBlock.style.top = window.pageYOffset + 'px';
	}
	else {
		fixedBlock.style.top = 0;
	}
}
