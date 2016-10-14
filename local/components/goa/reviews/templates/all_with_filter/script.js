/**
 * Created by PhpStorm.
 * User: dev@dermanov.ru
 * Date: 15.10.2016
 * Time: 1:07
 *
 *
 */

$(function(){

    /*
    * Show more btn
    * */
    $(document).on("click", "#show_more_reviews", function(){
        var sender = $(this)
        var next_page_num = sender.data("next_page_num")

        console.log("click show_more_reviews")

        var params = {
            "REVIEWS_PAGE_NUM" : next_page_num
        }

        var obMsg = BX.showWait()
        $(obMsg).css("position", "fixed")

        $.get(location.href, params, function(answer, textStatus, xhr) {
            // check the answer status is ok
            if (xhr.readyState != 4 || xhr.status != 200) {
                alert("Во время запроса произошла ошибка. Попробуйте повторить запрос позже.");

                return;
            }

            //console.log("AJAX => ", answer)

            // remove old "show more" btn
            sender.remove()

            $("#review_container").append( $(answer).find("#review_container").html() )

            BX.closeWait()
        });

        return false
    })
})