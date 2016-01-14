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
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

function popupCenter(linkUrl, width, height, name) {
    var separator = (linkUrl.indexOf('?') !== -1) ? '&' : '?',
        url = linkUrl + separator + 'popup=true',
        left = (screen.width - width) / 2,
        top = (screen.height - height) / 2,
        windowFeatures = 'menubar=no,toolbar=no,status=no,width=' + width +
            ',height=' + height + ',left=' + left + ',top=' + top;
    return window.open(url, name, windowFeatures);
}
