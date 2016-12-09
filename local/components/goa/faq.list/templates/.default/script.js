/**
 * Created by PhpStorm.
 * Date: 09.12.2016
 * Time: 22:42
 *
 * @author dev@dermanov.ru
 */

$(function () {

    var form = document.forms.askQuestion;
    form.addEventListener("submit", askQuestionFormSubmit);

    function askQuestionFormSubmit(e) {
        e.preventDefault();
        var data = new FormData(form),
            xhr = new XMLHttpRequest();

        xhr.open(form.method, "/ajax/ask_question.php");
        xhr.send(data);

        xhr.onload = function() {
            var response = xhr.response,
                formHeader = document.querySelector("div.form__header");
            if (xhr.readyState !== XMLHttpRequest.DONE ) return;
            if (xhr.status == 200 ) {
                formHeader.innerHTML = "Ваш вопрос успешно отправлен. Мы ответим Вам в ближайшее время";
                formHeader.style = "color: green";
                if (typeof modal !== "undefined") { modalWindow.classList.remove("hidden"); }
                form.reset();
            } else {
                formHeader.innerHTML = "При отправке произошла ошибка";
                formHeader.style = "color: red";
            }
        }

        return false;
    }
});
