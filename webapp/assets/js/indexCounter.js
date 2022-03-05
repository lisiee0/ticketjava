/* 카운터 기능 - 스크롤이 도착하면 출력할 숫자를 에니메이션 출력 */


$(function () {

  //Counters
  if ($(".counter-item [data-to]").length>0) {
      $(".counter-item [data-to]").each(function() {
          var stat_item = $(this),
          offset = stat_item.offset().top;
          if($(window).scrollTop() > (offset - 800) && !(stat_item.hasClass('counting'))) {
              stat_item.addClass('counting');
              stat_item.countTo();
          };
          $(window).scroll(function() {
              if($(window).scrollTop() > (offset - 800) && !(stat_item.hasClass('counting'))) {
                  stat_item.addClass('counting');
                  stat_item.countTo();
              }
          });
      });
  };

    //shuffle.js
  var shuffleme = (function( $ ) {
    'use strict';
        var $grid = $('#grid'), //locate what we want to sort 
        $filterOptions = $('.portfolio-sorting li'),  //locate the filter categories

    init = function() {

      // None of these need to be executed synchronously
      setTimeout(function() {
        listen();
        setupFilters();
      }, 100);

      $("#grid .col-md-4").slice(0, 4).show();

      $("#loadMore").on('click', function(e) {
        e.preventDefault();
        $("#grid .col-md-4:hidden")
          .slice(0, 4)
          .fadeIn()
          .each(function() {
            $grid.shuffle('appended', $(this));
          });

        if($("#grid .col-md-4:hidden").length == 0){
          $("#loadMore").addClass("disabled").html("No more to Load");
        } 
      });

      // instantiate the plugin
      $grid.shuffle({
        itemSelector: '[class*="col-"]', 
         group: Shuffle.ALL_ITEMS, 
      });
    },

      
    // 스크롤 인식 기능 - IE7에서 동작하지 않음
	// 개발자 코멘트 Re layout shuffle when images load. This is only needed below 768 pixels because the .picture-item height is auto and therefore the height of the picture-item is dependent on the image I recommend using imagesloaded to determine when an image is loaded
    listen = function() {
      var debouncedLayout = $.throttle( 300, function() {
        $grid.shuffle('update');
      });

      // Get all images inside shuffle
      $grid.find('img').each(function() {
        var proxyImage;

        // Image already loaded
        if ( this.complete && this.naturalWidth !== undefined ) {
          return;
        }

        // If none of the checks above matched, simulate loading on detached element.
        proxyImage = new Image();
        $( proxyImage ).on('load', function() {
          $(this).off('load');
          debouncedLayout();
        });

        proxyImage.src = this.src;
      });

      // Because this method doesn't seem to be perfect.
      setTimeout(function() {
        debouncedLayout();
      }, 500);
    };      

    return {
      init: init
    };
  }( jQuery ));

  if($('#grid').length >0 ) { 
    shuffleme.init(); //filter portfolio
  };

}());


