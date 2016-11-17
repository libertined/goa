var form = document.forms.askQuestion;
form.addEventListener("submit", formSubmit);

function formSubmit(e) {
	e.preventDefault();
	var data = new FormData(form),
	xhr = new XMLHttpRequest();

	xhr.open(form.method, form.action);
	xhr.send(data);

	xhr.onload = function() {
		var response = xhr.response,
			formHeader = document.querySelector("div.form__header");
		if (xhr.readyState !== XMLHttpRequest.DONE ) return;
		if (xhr.status == 200 ) {
			formHeader.innerHTML = "Ваш вопрос успешно отправлен. Мы ответим Вам в ближайшее время";
			formHeader.style = "color: green";
			if (modal !== undefined) { modalWindow.classList.remove("hidden"); }
			form.reset();
		} else {
			formHeader.innerHTML = "При отправке произошла ошибка";
			formHeader.style = "color: red";
		}
	}
}