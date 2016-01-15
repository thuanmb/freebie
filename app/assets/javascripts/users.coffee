popupCenter = (linkUrl, width, height, name) ->
  separator = if linkUrl.indexOf('?') != -1 then '&' else '?'
  url = linkUrl + separator + 'popup=true'
  left = (screen.width - width) / 2
  top = (screen.height - height) / 2
  windowFeatures = 'menubar=no,toolbar=no,status=no,width=' + width + ',height=' + height + ',left=' + left + ',top=' + top
  window.open url, name, windowFeatures

$ ->
  $('a.popup').click (e) ->
    e.preventDefault()
    popupCenter $(this).attr('href'), $(this).attr('data-width'), $(this).attr('data-height'), 'authPopup'
