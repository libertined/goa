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
			auto: true,
			autoHover: true,
			speed: 500,
			pause: 10000,
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
		var bxslider_exs_1 = [];
		$('.bxslider_exs_1').each(function(i) {
			var slider;
			slider = $(this).bxSlider({
				mode: 'horizontal',
				minSlides: 1,
				maxSlides: 1,
				moveSlides: 1,
				//slideWidth: 1000,
				auto: false,
				autoHover: true,
				speed: 500,
				pause: 1000,
				adaptiveHeight: true,
				pager: ($(".bxslider_exs_1>.slider-exs__item").length > 1) ? true: false,
				controls: ($(".bxslider_exs_1>.slider-exs__item").length > 1) ? true: false,
				touchEnabled: true
			});
			bxslider_exs_1[i] = slider;
		})
	}

	if($('.bxslider_exs_2').length>0) {
		var bxslider_exs_2 = $('.bxslider_exs_2').bxSlider({
			mode: 'horizontal',
			minSlides: 1,
			maxSlides: 1,
			moveSlides: 1,
			//slideWidth: 1000,
			auto: false,
			autoHover: true,
			speed: 500,
			pause: 1000,
			adaptiveHeight: true,
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
		var url = btn.attr("href");

		$(".js-extab-btn").closest(".tabs__item").removeClass("tabs--item-active");
		btn.closest(".tabs__item").addClass("tabs--item-active");

		$(".js-extab").css("display","none");
		$(".js-extab[data-tab="+data+"]").css("display","block");

		if(bxslider_exs_1) {
			Array.prototype.forEach.call(bxslider_exs_1, function(item) {
				item.reloadSlider();
			})
		}

		if(bxslider_exs_2)
			bxslider_exs_2.reloadSlider();

		location.hash = url;

		return false;
	});

	//Нажатие заказать экскурсию
	$(document).on("click", ".js-excursion-order", function () {
		$(".js-extab-order").trigger('click');
		$("html:not(:animated),body:not(:animated)").animate({scrollTop: 350},500);
		return false;
	});

	//Если выбран какой-то хэш
	var curTab = location.hash;
	if(curTab && $(".js-extab-btn").length > 0) {
		$curTabBlock = $(".js-extab-btn[href="+curTab+"]");
		$curTabBlock.trigger('click');
	}

	//Мобильное меню
	$(document).on("click", ".page-header__menu-adaptive, .js-menu-adaptive-close", function () {
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
				$(".pseudo-select__wrap").removeAttr("style");
				$(".pseudo-select").removeClass("pseudo-select--show");
			}
			e.stopPropagation();
		});
	}

	//Раскрытие списка
	$(document).on("click", ".pseudo-select__text", function () {
		$(this).closest(".pseudo-select").find(".pseudo-select__wrap").slideToggle(0, function () {
			if ($(this).closest(".pseudo-select").hasClass("pseudo-select--show")) {
				$(this).closest(".pseudo-select").removeClass("pseudo-select--show");
			}
			else {
				$(this).closest(".pseudo-select").addClass("pseudo-select--show");
				$('.scroll-pane').jScrollPane({
					//showArrows: true
					//wheelSpeed: 10
				});
			}
		});
	});

	//Клик по элементу списка
	$(document).on("click", ".pseudo-select__option", function () {
		var el = $(this);
		var select_wrap = el.closest(".pseudo-select");
		var select_text = el.text();
		var data_value = el.attr("data-value");

		//Если мультиплай
		if(select_wrap.hasClass("pseudo-select--multiple")) {
			if(el.hasClass("current")) {
				el.removeClass("current");
				select_wrap.find('.pseudo-select__real option[value="'+data_value+'"]').removeAttr("selected");
			} else {
				el.addClass("current");
				select_wrap.find('.pseudo-select__real option[value="'+data_value+'"]').attr("selected","selected");
			}
		} else {
			select_wrap.find(".pseudo-select__option").removeClass("current");
			el.addClass("current");
			select_wrap.find(".pseudo-select__text").text(select_text);
			select_wrap.find(".pseudo-select__wrap").removeAttr("style");

			select_wrap.find('.pseudo-select__real option').removeAttr("selected");
			select_wrap.find('.pseudo-select__real option[value="'+data_value+'"]').attr("selected","selected");
			select_wrap.removeClass("pseudo-select--show");
		}
	});

	//Плюс-минус
	$(document).on("click", ".form__counter-btn", function () {
		var btn = $(this);
		var wrap = btn.closest(".form__counter");
		var input = wrap.find(".form--input-counter");
		var value = input.val()*1;

		if(btn.hasClass("form--counter-plus")) {
			var value_new = value+1;
			input.val(value_new);
		}

		if(btn.hasClass("form--counter-minus")) {
			var value_new = value-1;
			if(value_new < 1)
				value_new = 1;
			input.val(value_new);
		}
	});

	//Псеудочекбокс
	$(document).on("click", ".form--title-viber", function () {
		var el = $(this);
		var check="n";
		var phoneNumber = document.getElementById("label-phone").value;

		if(el.find(".form__viber-real").prop("checked"))
			var check="y";

		if(check=="n") {
			el.addClass("check");
			el.find(".form__viber-real").prop("checked","true");
			el.closest(".form__wrap").find(".form__input").attr("value", phoneNumber);
			el.closest(".form__wrap").find(".form__input").attr("readonly","readonly");
		}
		if(check=="y") {
			el.removeClass("check");
			el.find(".form__viber-real").prop("checked","");
			el.closest(".form__wrap").find(".form__input").attr("value", "");
			el.closest(".form__wrap").find(".form__input").removeAttr("readonly");
		}
	});

	//Календари
	if (!Modernizr.inputtypes.date) {
		$('input[type=date]').closest(".form__field").addClass("form--icon").addClass("form--icon-date");
		//Календари
		$(function() {
			$.datepicker.regional['ru'] = {
				closeText: 'Закрыть',
				prevText: '&#x3c;Пред',
				nextText: 'След&#x3e;',
				currentText: 'Сегодня',
				monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь',
					'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
				monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн',
					'Июл','Авг','Сен','Окт','Ноя','Дек'],
				dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
				dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт'],
				dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
				dateFormat: 'dd.mm.yy',
				firstDay: 1,
				isRTL: false
			};
			$.datepicker.setDefaults($.datepicker.regional['ru']);

			//все даты доступны
			$('.js-datepicker').each(function () {
				$(this).datepicker({defaultDate:0, dateFormat:'dd.mm.yy'});
			});

			//заблокированы все даты до текущей
			$('.js-datepicker-after').each(function () {
				$(this).datepicker({minDate: 0, defaultDate:0, dateFormat:'dd.mm.yy'});
			});

			//заблокированы все даты после текущей
			$('.js-datepicker-before').each(function () {
				$(this).datepicker({maxDate: 0, defaultDate:0, dateFormat:'dd.mm.yy'});
			});
		});
	} else {
		$('input[type=date]').closest(".form__field").removeClass("form--icon").removeClass("form--icon-date");
	}
	if (document.querySelector('.stick-border')) {
	window.addEventListener('scroll', stickAside.bind(null, document.querySelector('.stick-border'), document.getElementById('sticker')));
	}

	function stickAside(element, fixedBlock) {
		if (window.pageYOffset > element.offsetTop) {
			var shift = window.pageYOffset - element.offsetTop;
			fixedBlock.style.top = shift + 'px';
		}
		else {
			fixedBlock.style.top = 0;
		}
	}
	
	// сложная программа на вкладке "Программа и стоимость"" экскурсии
	$(document).on('click', '.faq .item__text', function(){
		var $dataAttr = $(this).next().data('table');
		var $pairedPriceTable = $('.price [data-table="'+$dataAttr+'"]');

		$(this).parents('.faq').children('.item').not($(this).parent()).children('.item__table').slideUp(200);
		$('.price').children('.item').not($pairedPriceTable.parent()).children('.item__table').slideUp(200);
		$(this).next().stop(true).slideToggle(300); 		
		$pairedPriceTable.stop(true).slideToggle(300);
	});	

	$(document).on('click', '.price .item__text', function(){
		$(this).parents('.price').children('.item').not($(this).parent()).children('.item__table').slideUp(200);
		$(this).next().stop(true).slideToggle(300);
	});


});

