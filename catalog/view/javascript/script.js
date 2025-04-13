jQuery(document).ready(function() {
    $('body').on('click', '.quant-btn', function () {
        var $input = $(this).parent().find('input');
        if ($(this).hasClass('quant-plus')) {
            $input.val(parseInt($input.val()) + 1);
            $input.change();
            return false;
        }
        else {
            var count = parseInt($input.val()) - 1;
            count = count < 1 ? 1 : count;
            $input.val(count);
            $input.change();
            return false;
        }
    });

    var mobile = $('.header-mobile') 
    $('.hamburger').on('click', function () {
       mobile.addClass('is-active');
    });
    $('.header-mobile-close').on('click', function () {
        mobile.removeClass('is-active');
     });
});
    