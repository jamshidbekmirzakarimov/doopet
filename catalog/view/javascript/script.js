jQuery(document).ready(function() {
// Уменьшение количества
$('.quant-minus').click(function() {
	var $input = $(this).siblings('.quant-input');
	var value = parseInt($input.val());
	if (value > 1) {
		value--;
		$input.val(value);
	}
});

// Увеличение количества
$('.quant-plus').click(function() {
	var $input = $(this).siblings('.quant-input');
	var value = parseInt($input.val());
	value++;
	$input.val(value);
});

    var mobile = $('.header-mobile') 
    $('.hamburger').on('click', function () {
       mobile.addClass('is-active');
    });
    $('.header-mobile-close').on('click', function () {
        mobile.removeClass('is-active');
     });
});
    