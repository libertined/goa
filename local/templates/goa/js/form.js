document.addEventListener("DOMContentLoaded", formInitialization);

function formInitialization() {
var servicesSelect = document.getElementById("service-list");
servicesSelect.addEventListener("change", formHandler);

//для тестов, показываем все скрытые блоки
/*var hiddenBlocks = document.querySelectorAll(".hidden");
Array.prototype.forEach.call(hiddenBlocks, function(item) {
    item.classList.remove("hidden");
}); 
*/
/* тест заканчивается здесь, удалить этот блок потом*/

function formHandler() {
	var excursionsSelectBlock = document.querySelector(".form__exhib-select"),
		excursionsSelect = document.getElementById("excursions-list"),
		directionBlock = document.getElementById("label-direction").closest("div.form__wrap"),
		celebrationType = document.getElementById("celebration-type"),
		celebrationTypeBlock = celebrationType.closest("div.form__wrap"),
		beachBlock = document.getElementById("label-beach").closest("div.form__wrap"),
		placeRent = document.getElementById("place-rent"),
		placeRentBlock = placeRent.closest("div.form__wrap"),
		hotelBlock = document.getElementById("label-hotel").closest("div.form__wrap");

	switch(servicesSelect.value) {
		case "excursion":
			toggleInputVisibility(true, excursionsSelectBlock, false, celebrationTypeBlock, false, beachBlock, false, placeRentBlock, false, directionBlock, true, hotelBlock);
			toggleInputAvailability(true, excursionsSelect, false, celebrationType, false, placeRent);
			break;

		case "taxi":
			toggleInputVisibility(false, excursionsSelectBlock, false, celebrationTypeBlock, false, beachBlock, false, placeRentBlock, true, directionBlock, true, hotelBlock);
			toggleInputAvailability(false, excursionsSelect, false, celebrationType, false, placeRent);
			break;

		case "rent":
			toggleInputVisibility(false, excursionsSelectBlock, false, celebrationTypeBlock, true, beachBlock, true, placeRentBlock, false, directionBlock, false, hotelBlock);
			toggleInputAvailability(false, excursionsSelect, false, celebrationType, true, placeRent);
			break;
		
		case "celebration":
			toggleInputVisibility(false, excursionsSelectBlock, true, celebrationTypeBlock, false, beachBlock, false, placeRentBlock, false, directionBlock, true, hotelBlock);
			toggleInputAvailability(false, excursionsSelect, true, celebrationType, false, placeRent);
			break;

		case "tickets":
			toggleInputVisibility(false, excursionsSelectBlock, false, celebrationTypeBlock, false, beachBlock, false, placeRentBlock, true, directionBlock, true, hotelBlock);
			toggleInputAvailability(false, excursionsSelect, false, celebrationType, false, placeRent);
			break;

		case "ayurveda":
			toggleInputVisibility(false, excursionsSelectBlock, false, celebrationTypeBlock, false, beachBlock, false, placeRentBlock, false, directionBlock, true, hotelBlock);
			toggleInputAvailability(false, excursionsSelect, false, celebrationType, false, placeRent);
			break;
	}
};


function toggleInputVisibility(){
	//first argument is boolean (show or hide), second one - object
	for (var i = 0; i < arguments.length; i+=2) {
	    if (arguments[i])
	        arguments[i+1].classList.remove("hidden");
	    else
	        arguments[i+1].classList.add("hidden");
	}
}

function toggleInputAvailability(){
	// first argument is boolean (show or hide), second one - object
	// true - make item available, false - make is disabled
	for (var i = 0; i < arguments.length; i+=2) {
	    if (arguments[i])
	        arguments[i+1].removeAttribute("disabled")
	    else
	        arguments[i+1].setAttribute("disabled", "disabled");
	}
}
}