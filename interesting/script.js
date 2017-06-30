window.addEventListener('scroll', stickAside.bind(null, document.querySelector('.interesting'), document.querySelector('.interesting-labels')));

function stickAside(element, fixedBlock) {
	if (window.pageYOffset > element.offsetTop) {
		var shift = window.pageYOffset - element.offsetTop;
		fixedBlock.style.top = shift + 'px';
	}
	else {
		fixedBlock.style.top = 0;
	}
}
