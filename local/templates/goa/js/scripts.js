$(document).ready( function() {
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

	$(".js-interesting-refresh").on('click', function(){
		$.ajax({
			type: 'POST',
			url: "/ajax/interesting.php",
			success: function(data){
				$(".js-interesting-text").html(data);
			}
		});
	});
});