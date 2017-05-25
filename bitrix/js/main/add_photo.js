var printjQ = false;
function initPhotoJQ() {
    if (typeof(jQuery) == 'undefined') {
        if (!printjQ) {
            printjQ = true;
             document.write('<script type="text/javascript" src="/local/templates/goa/js/jquery-3.1.0.min.js"></script>');
             document.write('<script type="text/javascript" src="/local/templates/goa/js/jquery.form.js"></script>');
        }
        setTimeout('initPhotoJQ()', 50);
    } else {
        $(function () {
            pathname = window.location.pathname;
            iblock_id = getUrlParam(window.location.href, 'IBLOCK_ID');
            element_id = getUrlParam(window.location.href, 'ID');
            var section_id = getUrlParam(window.location.href, 'find_section_section');
            if ((pathname == "/bitrix/admin/iblock_list_admin.php" ||
                pathname == "/bitrix/admin/iblock_section_admin.php" ||
                pathname == "/bitrix/admin/iblock_element_admin.php") &&
                iblock_id == 6 && section_id != 0) {
                html = '<form style="padding:4px" id="photo_form" name="photo_form" action="/ajax/add_photo.php" enctype="multipart/form-data" method="post">' +
                    '<input id="fileName" style="margin:3px" type="button" value="Массовая загрузка" class="adm-btn-add adm-btn-save"/>' +
                    '<input id="file_button" style = "display:none" type = "file" min = "1" max = "9999" name = "file[]" onchange = "setValue(this)" multiple = "true" />' +
                    '<input type = "hidden" name = "sect" value = "' + section_id +'" >'+
                    '<input type = "submit" onclick = "this.blur();" value = "Загрузить"> </form>';
                $('.adm-list-table-layout').before(html);
                // $('.adm-list-table-layout')
                //     .before('<form style="padding:4px" id="photo_form" name="photo_form" action="/ajax/add_photo.php" enctype="multipart/form-data" method="post"><input id="fileName" style="margin:3px" type="button" value="Массовая загрузка" class="adm-btn-add adm-btn-save"/><input id="file_button" style = "display:none" type = "file" min = "1" max = "9999" name = "file[]" onchange = "setValue(this)" multiple = "true" /> <input type = "hidden" name = "sect" value = "' +
                //         $section_id +'" > <input type = "submit" onclick = "this.blur();" value = "Загрузить"> </form> ');
                $('#fileName').click(function () {
                    $(this).blur();
                    $('#file_button').click();
                });
                $("#photo_form").ajaxForm(function (resultado) {
                    resetForm('#photo_form');
                    window.location.reload();
                });
            }
        });
    }
}
function setValue(el) {
    $('#fileName').val("Фото готовы для загрузки");
    /*     $('#file_button').css('width','223px');
     $('#file_button').css('margin-left','-225px'); */
}
function resetForm(el) {
    $(el).each(function () {
        this.reset();
    });
}
function getUrlParam(url, name) {
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(url);
    if (results == null)
        return null;
    else
        return results[1];
}
initPhotoJQ();