$(document).on('page:load', function(event) {

  $( "#location_id" ).change(function () {
    console.log("hello");
    
    window.location.href = window.location.href + '&' + $(this).value();
  })

});



