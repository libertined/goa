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

	//Переключение вкладок экскурсии
	$(document).on("click", ".js-extab-btn", function () {
		var btn = $(this);
		var data = btn.attr("data-tab");

		$(".js-extab-btn").closest(".tabs__item").removeClass("tabs--item-active");
		btn.closest(".tabs__item").addClass("tabs--item-active");

		$(".js-extab").css("display","none");
		$(".js-extab[data-tab="+data+"]").css("display","block");
		return false;
	});

	//Мобильное меню
	$(document).on("click", ".js-menu-adaptive-btn, .js-menu-adaptive-close", function () {
		$(".js-menu-adaptive-list").slideToggle("200", function () {});
		return false;
	});

	$(document).on("click", ".js-interesting-refresh", function () {
		$.ajax({
			type: "POST",
			url: "/ajax/interesting.php",
			success: function(data){
				$(".js-interesting-text").html(data);
			}
		});
	});


	//ПСЕВДО-СЕЛЕКТ
	//Клик вне селекта
	if ($(".pseudo-select").length) {
		$(document).click(function (e) {
			if ($(e.target).closest(".pseudo-select").length) {
				return;
			}
			else {
				$(".pseudo-select__list").removeAttr("style");
				$(".pseudo-select").removeClass("pseudo-select--show");
			}
			e.stopPropagation();
		});
	}

	//Раскрытие списка
	$(document).on("click", ".pseudo-select__text", function () {
		$(this).closest(".pseudo-select").find(".pseudo-select__list").slideToggle(0, function () {
			if ($(this).closest(".pseudo-select").hasClass("pseudo-select--show")) {
				$(this).closest(".pseudo-select").removeClass("pseudo-select--show");
			}
			else {
				$(this).closest(".pseudo-select").addClass("pseudo-select--show");
			}
		});
	});

	//Клик по элементу списка
	$(document).on("click", ".pseudo-select__option", function () {
		var select_wrap = $(this).closest(".pseudo-select");
		var select_text = $(this).text();
		var data_value = $(this).attr("data-value");

		select_wrap.find(".pseudo-select__option").removeClass("current");
		$(this).addClass("current");
		select_wrap.find(".pseudo-select__text").text(select_text);
		select_wrap.find(".pseudo-select__list").removeAttr("style");

		select_wrap.find('.pseudo-select__real option').removeAttr("selected");
		select_wrap.find('.pseudo-select__real option[value="'+data_value+'"]').attr("selected","selected");
		select_wrap.removeClass("pseudo-select--show");
	});

});