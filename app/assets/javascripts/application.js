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
//= require turbolinks
//= require bootstrap-sprockets
//= require chosen-jquery
//
//= require users
//= require welcome
//= require geo_location
//
//= require_tree .
//= require_tree ../../../vendor/assets/javascripts/.

AbstractChosen.browser_is_supported = function () {
  return true;
};

$(document).ready(function () {
  var secondaryNav = $('.navbar-header');
  if (secondaryNav.length > 0) {
    var secondaryNavTopPosition = secondaryNav.offset().top;

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

    $(".cd-secondary-nav-trigger").click(function (e) {
      e.preventDefault();
      secondaryNav.toggleClass("is-visible");
    });
  }

  $( "#location_id" ).change(function () {
    window.location.href = '/posts?city=' + $(this).val();
  })

});

