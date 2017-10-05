$(function () {
    var servicesSelect = document.getElementById("service-list"),
        form = document.forms.orderForm,
        modalWindow = document.querySelector(".modal-order");

    /*
    * On tour detail page - select does not exists
    * */
    if (servicesSelect != null){
        servicesSelect.addEventListener("change", formHandler);
    }

    form.addEventListener("submit", formSubmit);
    document.querySelector(".modal-close").addEventListener("click", closeModal);
    document.querySelector(".modal-close__link").addEventListener("click", closeModal);

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
        if (servicesSelect != null){
            switch(servicesSelect.options[ servicesSelect.selectedIndex ].dataset.js_value) {
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
                case "wedding":
                    toggleInputVisibility(false, excursionsSelectBlock, false, celebrationTypeBlock, true, beachBlock, false, placeRentBlock, false, directionBlock, true, hotelBlock);
                    toggleInputAvailability(false, excursionsSelect, false, celebrationType, false, placeRent);
            }
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

    function formSubmit(e) {
        e.preventDefault();
        var data = new FormData(form),
            xhr = new XMLHttpRequest();

        xhr.open(form.method, "/ajax/order.php");
        xhr.send(data);

        xhr.onload = function() {
            var response = xhr.response,
                formHeader = document.querySelector("div.form__header");
            if (xhr.readyState !== XMLHttpRequest.DONE ) return;
            if (xhr.status == 200 ) {
                modalWindow.classList.remove("hidden");

                form.reset();

            } else {
                formHeader.innerHTML = "При отправке произошла ошибка";
                formHeader.style = "color: red";
            }
        }
    }

    function closeModal(e) {
        e.preventDefault();
        modalWindow.classList.add("hidden");
    }
	var hash = window.location.hash.replace('#', '');
	switch(hash) {
		case 'taxi': 
			servicesSelect.value = 3;
			break;
		case 'rent':
			servicesSelect.value = 4;
			break;
		case 'celebration':
			servicesSelect.value = 5;
			break;
		case 'tickets':
			servicesSelect.value = 6;
			break;
		case 'ayurveda':
			servicesSelect.value = 7;
			break;
		case 'wedding':
			servicesSelect.value = 15;
			break;

	}
	formHandler();

})
