var serviceBlocks = document.querySelectorAll('.service-block');

Array.prototype.forEach.call(serviceBlocks, function(item) {
	item.addEventListener('click', serviceSwitch);
})

function toggle(element, array, classNameCheck) {
	Array.prototype.forEach.call(array, function(item) {
		item.classList.remove(classNameCheck);
	})
	element.classList.add(classNameCheck);
}

function serviceSwitch(event) {
	var blockId = event.target.closest('div.service-block').getAttribute('id'),
		contentTabId = 'content-' + blockId,
		contentTabs = document.querySelectorAll('.service-item'),
		currentTab = document.getElementById(contentTabId);
	toggle(currentTab, contentTabs, 'service-item--show');
}

var closeLinks = document.querySelectorAll('.service-item__close');

if (closeLinks) {
	Array.prototype.forEach.call(closeLinks, function(item) {
		item.addEventListener('click', closeServiceBlock);
	})
	
}

function closeServiceBlock(e) {
	var serviceBlock = e.target.closest('section.service-item');
	serviceBlock.classList.remove('service-item--show');
}


var contentHash = 'content-' + window.location.hash.replace('#', ''),
	contentSection = document.getElementById(contentHash);
contentSection.classList.add('service-item--show');
