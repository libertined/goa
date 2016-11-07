document.addEventListener("DOMContentLoaded", formInitialization);
var servicesSelect = document.getElementById("service-list");
servicesSelect.addEventListener("change", toggleInputsVisibility);

function toggleInputsVisibility() {
	var isExcursion = false,
		excursionsList = document.getElementById("excursions-list");
	if (servicesSelect.value == "excursion") {
		isExcursion = true;
	} else {
		isExcursion = false;
	};

	if (isExcursion) {

	}
};



