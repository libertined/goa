$(document).ready( function() {
	//Кнопка прокрутки наверх
	$(function() {
		var e = $(".js-scrollTop");
		var	speed = 500;
		e.click(function(){
			//$("html:not(:animated)" +( !$.browser.opera ? ",body:not(:animated)" : "")).animate({scrollTop: 0},500);
			$("html:not(:animated),body:not(:animated)").animate({scrollTop: 0},speed);
			return false;
		});
		//появление
		function show_scrollTop() {
			( $(window).scrollTop()>300 ) ? e.fadeIn(600) : e.hide();
		}
		$(window).scroll( function(){show_scrollTop();} ); show_scrollTop();
	});

	if($('.bxslider_main').length>0) {
		$('.bxslider_main').bxSlider({
			mode: 'horizontal',
			minSlides: 1,
			maxSlides: 1,
			moveSlides: 1,
			//slideWidth: 1000,
			auto: false,
			autoHover: true,
			speed: 500,
			pause: 1000,
			pager: ($(".bxslider_main>.slider-main__item").length > 1) ? true: false,
			controls: ($(".bxslider_main>.slider-main__item").length > 1) ? true: false,
			touchEnabled: true
		});
	}

	if($('.bxslider_reviews').length>0) {
		$('.bxslider_reviews').bxSlider({
			mode: 'horizontal',
			minSlides: 1,
			maxSlides: 1,
			moveSlides: 1,
			//slideWidth: 1000,
			auto: false,
			autoHover: true,
			speed: 500,
			pause: 1000,
			pager: ($(".bxslider_reviews>.slider-review__item").length > 1) ? true: false,
			controls: ($(".bxslider_reviews>.slider-review__item").length > 1) ? true: false,
			touchEnabled: true
		});
	}

	if($('.bxslider_exs_1').length>0) {
		$('.bxslider_exs_1').bxSlider({
			mode: 'horizontal',
			minSlides: 1,
			maxSlides: 1,
			moveSlides: 1,
			//slideWidth: 1000,
			auto: false,
			autoHover: true,
			speed: 500,
			pause: 1000,
			pager: ($(".bxslider_exs_1>.slider-exs__item").length > 1) ? true: false,
			controls: ($(".bxslider_exs_1>.slider-exs__item").length > 1) ? true: false,
			touchEnabled: true
		});
	}

	if($('.bxslider_exs_2').length>0) {
		$('.bxslider_exs_2').bxSlider({
			mode: 'horizontal',
			minSlides: 1,
			maxSlides: 1,
			moveSlides: 1,
			//slideWidth: 1000,
			auto: false,
			autoHover: true,
			speed: 500,
			pause: 1000,
			pager: ($(".bxslider_exs_2>.slider-exs__item").length > 1) ? true: false,
			controls: ($(".bxslider_exs_2>.slider-exs__item").length > 1) ? true: false,
			touchEnabled: true
		});
	}

	//Переключение виджетов
	$(document).on("click", ".js-tab-btn", function () {
		var btn = $(this);
		var data = btn.attr("data-tab");

		$(".js-tab-btn").removeClass("btn--blue").addClass("btn--grey");
		btn.removeClass("btn--grey").addClass("btn--blue");

		$(".js-tab").css("display","none");
		$(".js-tab[data-tab="+data+"]").css("display","block");
		return false;
	});

	$(".js-interesting-refresh").on('click', function(){
		$.ajax({
			type: "POST",
			url: "/ajax/interesting.php",
			success: function(data){
				$(".js-interesting-text").html(data);
			}
		});
	});
});