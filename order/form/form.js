//document.addEventListener("DOMContentLoaded", formInitialization);
var servicesSelect = document.getElementById("service-list");
servicesSelect.addEventListener("change", formHandler);

//для тестов, показываем все скрытые блоки
var hiddenBlocks = document.querySelectorAll(".hide");
Array.prototype.forEach.call(hiddenBlocks, function(item) {
    item.classList.remove("hide");
    if ( item.querySelector("select")) {
    	item.querySelector("select").removeAttribute("disabled");
    	}	

}); 
 
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

/* Написать 2 функции, показ / скрытие блока 
и установка / снятие атрибута disabled.
В качестве параметров - список переменных (блоков) - для отображения / скрытия,
добавления / удаления атрибута, и последний - true/false (установка/снятие)
*/

	switch(servicesSelect.value) {
		case "excursion":
			excursionsSelectBlock.classList.remove("hide");
			excursionsSelect.removeAttribute("disabled");
			celebrationType.setAttribute("disabled", "disabled");
			placeRent.setAttribute("disabled", "disabled");
			//celebrationTypeBlock.classList.add("hide");		
			//beachBlock.classList.add("hide");
			//directionBlock.classList.add("hide");
			break;

		case "taxi":
			//excursionsSelectBlock.classList.add("hide");
			excursionsSelect.setAttribute("disabled", "disabled");
			celebrationType.setAttribute("disabled", "disabled");
			placeRent.setAttribute("disabled", "disabled");
			directionBlock.classList.remove("hide");
			break;

		case "rent":
			//excursionsSelectBlock.classList.add("hide");
			excursionsSelect.setAttribute("disabled", "disabled");
			celebrationType.setAttribute("disabled", "disabled");
			placeRent.removeAttribute("disabled");
			//direction.classList.add("hide");
			break;
		
		case "celebration":
			excursionsSelect.setAttribute("disabled", "disabled");
			celebrationType.removeAttribute("disabled");
			placeRent.setAttribute("disabled", "disabled");
			break;

		case "tickets":
			excursionsSelect.setAttribute("disabled", "disabled");
			celebrationType.setAttribute("disabled", "disabled");
			placeRent.setAttribute("disabled", "disabled");
			break;

		case "ayurveda":
			excursionsSelect.setAttribute("disabled", "disabled");
			celebrationType.setAttribute("disabled", "disabled");
			placeRent.setAttribute("disabled", "disabled");
			break;
	}
};


function toggleInputVisibility(){
	//first argument is boolean (show or hide), second one - object
	for (var i = 0; i < arguments.length; i+=2) {
	    if (arguments[i])
	        arguments[i+1].classList.remove("hide");
	    else
	        arguments[i+1].classList.add("hide");
	}
}