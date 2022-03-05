/* 메인페이지 갤러리 기능 */


$(window).on("load", function() {

	/* isotope */
	var $gallery = $('.gallery').isotope({});
	$('.gallery').isotope({

		// options
		itemSelector: '.item-img',
		transitionDuration: '0.5s',

	});


	$(".gallery .single-image").fancybox({
		'transitionIn': 'elastic',
		'transitionOut': 'elastic',
		'speedIn': 600,
		'speedOut': 200,
		'overlayShow': false
	});


	/* filter items on button click */
	$('.filtering').on('click', 'button', function() {

		var filterValue = $(this).attr('data-filter');

		$gallery.isotope({ filter: filterValue });

	});

	$('.filtering').on('click', 'button', function() {

		$(this).addClass('active').siblings().removeClass('active');

	});

}) // load

$(function() {
	$(".cover-bg").each(function() {
		var attr = $(this).attr('data-image-src');

		if (typeof attr !== typeof undefined && attr !== false) {
			$(this).css('background-image', 'url(' + attr + ')');
		}

	});

	/* sections background color from data background */
	$("[data-background-color]").each(function() {
		$(this).css("background-color", $(this).attr("data-background-color"));
	});



}); // function


