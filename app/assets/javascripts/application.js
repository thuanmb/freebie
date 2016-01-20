// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require chosen-jquery
//
//= require users
//= require messages
//
//= require_tree .
//= require_tree ../../../vendor/assets/javascripts/.
var CAROUSEL_AMIN_CLASS = "carousel-anim";

$(document).ready(function () {
  var secondaryNav = $('.navbar-header'),
    secondaryNavTopPosition = secondaryNav.offset().top;
   
  $(window).on('scroll', function(){
    
    if($(window).scrollTop() > secondaryNavTopPosition ) {
      $("body").addClass('is-fixed');  
      setTimeout(function() {
        secondaryNav.addClass('animate-children');
      }, 50);
    } else {
      $("body").removeClass('is-fixed');
      setTimeout(function() {
        secondaryNav.removeClass('animate-children');
      }, 50);
    }
  });

  $(".cd-secondary-nav-trigger").click(function () {
    secondaryNav.toggleClass("is-visible");
  });

  $('#carousel-campaign-list').on('slide.bs.carousel', function (e) {
    $(".carousel-item").removeClass(CAROUSEL_AMIN_CLASS)
    $(e.relatedTarget).addClass(CAROUSEL_AMIN_CLASS)
  });
});
