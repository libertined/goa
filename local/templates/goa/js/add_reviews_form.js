// TODO - добавить проверку на макс. число загружаемых файлов в отзыве
// TODO - добавить прелоадер

$(function () {
    var form = document.forms.addReview,
        dropzone = document.querySelector(".dropzone"),
        label = document.querySelector(".form__file"),
        droppedFiles = false,
        maxFileSize = 10 * Math.pow(2, 20);

    form.addEventListener("drop", dropFiles);
    form.addEventListener("submit", formSubmit);
    document.getElementById("upload-review-photos").addEventListener("change", inputFiles);

    // Если файлы перенесены методом drag&drop
    function dropFiles(e) {
        droppedFiles = Array.prototype.filter.call(e.dataTransfer.files, function(file) {
            //фильтруем полученные файлы e.dataTransfer.files, оставляем только image/jpeg
            return file.type == "image/jpeg";
        });


        document.getElementById("upload-review-photos").value = "";
        var outText = showText(droppedFiles);
        document.querySelector(".form__file").innerHTML = outText;
        if (calcFilesSize(droppedFiles) > maxFileSize) {
            droppedFiles = false;
            return false;
        }
        return droppedFiles;
    }

    // Если файлы были загружены через input
    function inputFiles() {
        var outText = "";
        droppedFiles = false;
        if(this.value.split(/(\\|\/)/g).pop()=='') {
            outText = 'Нажмите для выбора фото или же перетащите выбранные фото мышкой';
        } else {
            outText = showText(this.files);
        }
        document.querySelector(".form__file").innerHTML = outText;
        if (calcFilesSize(this.files) > maxFileSize) {
            this.value = "";
        }
    }


    function showText(files) {
        var outText = "";
        if ( calcFilesSize(files) <= maxFileSize ) {
            outText = showFileNames(files);
        } else {
            outText = "Размер файлов больше " + maxFileSize/Math.pow(2, 20) + "Мб";
        };
        return outText;

    }

    function calcFilesSize(files) {
        var currentSize = 0;
        for (var i = 0; i < files.length; i++) {
            currentSize += files[i].size;
        };
        return currentSize;
    }

    function showFileNames(files) {
        var outText = "<p>Вы собираетесь загрузить файлы</p><br/>";
        for (var i = 0; i < files.length; i++) {
            outText += files[i].name + "<br />";
        };
        return outText;
    }


    // Определяем, разрешен ли drag&drop
    var isAdvancedUpload = function() {
        var div = document.createElement('div');
        return (('draggable' in div) || ('ondragstart' in div && 'ondrop' in div)) && 'FormData' in window && 'FileReader' in window;
    };

    if (isAdvancedUpload) {
        document.forms.addReview.classList.add("advanced");
    } else {
        label.innerHTML = "Нажмите для выбора фото"
    }

    dropzone.ondragover = function() {
        this.className = 'form__field dropzone dragover';
        label.innerHTML = "Файлы можно отпускать";
        return false;
       };

    dropzone.ondragleave = function() {
        this.className = 'form__field dropzone';
        return false;
       };

    dropzone.ondrop = function(e) {
        this.className = 'form__field dropzone';
        e.preventDefault();
       };

    function formSubmit(e) {
        e.preventDefault();

        var data = new FormData(form),
            xhr = new XMLHttpRequest();

        if (droppedFiles) {
            Array.prototype.forEach.call(droppedFiles, function(file) {
                data.append("photos[]", file);
            });
        }

        xhr.open(form.method, "/ajax/add_review.php");
        xhr.send(data);

        xhr.onload = function() {
            var response = xhr.response,
                formHeader = document.querySelector("div.form__header");
            if (xhr.readyState !== XMLHttpRequest.DONE ) return;
            if (xhr.status == 200 ) {
                formHeader.innerHTML = "Отзыв успешно отправлен";
                formHeader.style = "color: green";

                /*
                * Сбрасываем все, кроме стилизованного селекта.
                * Селек почему-то после сброса начинает глючить, и при отправке формы всегда отправляется последний option.
                * */
                $(form).find(":text, textarea, :file").val("")

                droppedFiles = false;
                label.innerHTML = "Перетащите фото сюда или нажмите для выбора на компьютере";

            } else {
                formHeader.innerHTML = "При отправке произошла ошибка";
                formHeader.style = "color: red";
            }
        }

    }
});


