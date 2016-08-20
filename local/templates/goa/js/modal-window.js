//************ Модальные окна BEGIN *******************//
$(document).ready( function() {
	//Генерация подложки для модального окна
	$("body").prepend("<div class='modal-shadow'></div>");
	
	//Инициализация окна
	$(".modal-window").each(function() {
	  	$(this).prepend("<a href='' class='closemodal'></a>");
	  	$(this).addClass("js-window");
	    modalresizer();
	});
	
	//Открытие окна
	$(document).on("click", ".openmodal", function (e) {
		e.preventDefault();
		var btn = $(this);
		var modal_id = $(this).attr("data-id");
		var slide_id = "";
		slide_id = $(this).attr("data-slide");
		openmodal(modal_id, slide_id);
	});
	
	//Закрытие модального окна
	$("body").on("click", ".closemodal, .modal-shadow", function(event) {
	    $(".modal-window, .modal-shadow").animate({
			opacity: 0
		}, 500, function() {
			$(".modal-window, .modal-shadow").removeClass("js-active");
		});
		event.preventDefault();
  	});
  	
	//Функция отложенного конечного действия
	var waitForFinalEvent = (function () {
  		var timers = {};
  		return function (callback, ms, uniqueId) {
    		if (!uniqueId) {
      			uniqueId = "Don't call this twice without a uniqueId";
    		}
	    	if (timers[uniqueId]) {
	      		clearTimeout (timers[uniqueId]);
	    	}
	    	timers[uniqueId] = setTimeout(callback, ms);
  		};
	})();
	//При ресайзе окна
	$(window).resize(function () {
		waitForFinalEvent(function(){
			modalresizer();
		}, 500, "some unique string");
	});
});

//Открытие окна
function openmodal(artic, slide_id) {
	modalresizer();    
  	$("#" + artic).addClass("js-active");  	
  	$("#" + artic).animate({
    	opacity: 1
  	}, 500, function() {
		if(artic=="modal-gallery") {
			$("#" + artic).css("opacity","0");
			$(".gallery").css("display", "block");
			
			if($('.bxslider_gallery').length>0) {
				if(typeof slidergal !== "undefined") {
					$("#" + artic).css("opacity","1");
					slidergal.goToSlide(slide_id);
				}
				else {
					slidergal = $('.bxslider_gallery').bxSlider({
						mode: 'horizontal',
						minSlides: 1,
						maxSlides: 1,
						moveSlides: 1,
						//slideWidth: 900,
						auto: false,
						autoHover: true,
						speed: 500,
						pause: 1000,
						pager: ($(".bxslider_gallery>.gallery__slide").length > 1) ? true: false,
						controls: ($(".bxslider_gallery>.gallery__slide").length > 1) ? true: false,
						touchEnabled: true,
						pagerCustom: '#js-gallery-pager',
						onSliderLoad: function(){
							$("#" + artic).css("opacity","1");
						}
					});
					slidergal.goToSlide(slide_id);
				}
			}
		}
	});
  	$(".modal-shadow").addClass("js-active");
  	$(".modal-shadow").animate({
    	opacity: 1
  	}, 500);
}
//Делаем окно адаптивным
function modalresizer() {
    $(".modal-window").each(function() {
    	if( $(this).innerHeight() > $(window).height() ) {
        	$(this).addClass("js-window-absolut");
            var toppos = $(window).scrollTop();
            $(this).css({"top" : toppos });
        } else {
            $(this).removeClass("js-window-absolut");
	      	var getheight = $(window).height();
	      	var getmodalheight = $(this).innerHeight();
	      	var gtx = getheight - getmodalheight;
	      	gtx = gtx / 2;
            $(this).css({"top" : gtx });
        } 
    });  
}
//************ Модальные окна END *******************//