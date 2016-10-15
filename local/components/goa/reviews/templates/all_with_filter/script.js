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
    * filter reviews by one tour
    * */
    $(document).on("click", ".js_filter_reviews_by_tour", function() {
        var tour_id    = $(this).data("tour_id")
        var scrollUpto = $("#reviews_filter_by_tour_select").offset().top - 40

        // scroll page to begin of items list
        $("html, body").animate({
            scrollTop : scrollUpto
        }, 700, function(){
            // start filter in the end of scroll
            $("#reviews_filter_by_tour_select").val( tour_id ).change()
        })

        return false
    })

    /*
    * filter reviews by tours
    * */
    $(document).on("change", "#reviews_filter_by_tour_select", function() {
        var sender = $(this)
        var tourId = sender.val()

        tourId = tourId.join(",")

        //console.log("change reviews_filter_by_tour_select")
        //console.log("tourId", tourId)

        var params = {
            "REVIEWS_PAGE_NUM" : 1,
            "REVIEWS_TOUR_ID"  : tourId,
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

            $("#review_container").replaceWith( $(answer).find("#review_container") )
            $("#reviews_by_filter_count").replaceWith( $(answer).find("#reviews_by_filter_count") )

            // TODO re init photo gallery of items

            BX.closeWait()
        });
    })


    /*
    * Show more btn
    * - with current filter by tour
    * */
    $(document).on("click", "#show_more_reviews", function(){
        var sender = $(this)
        var next_page_num = sender.data("next_page_num")

        var tourId = $("#reviews_filter_by_tour_select").val()
        tourId = tourId.join(",")

        var params = {
            "REVIEWS_TOUR_ID"  : tourId,
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

            // TODO re init photo gallery of items

            BX.closeWait()
        });

        return false
    })
})