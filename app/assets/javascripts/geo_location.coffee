class GeoLocation
  constructor: (successCb, errorCb) ->
    @successCb = successCb
    @errorCb = errorCb

  getLocation: () =>
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition(@showPosition, @showError);
  
  showPosition: (position) =>
    $.getJSON "https://maps.googleapis.com/maps/api/geocode/json?latlng=" + position.coords.latitude + "," + position.coords.longitude + "&sensor=true", (data) => 
      if @successCb
        @successCb @getCity data

  getCity: (data) =>
    index = if isENLocale then 4 else 0
    if data.results && data.results.length > index
      addressComponents = data.results[index].address_components

      result = null
      for component in addressComponents
        if component.types.length >= 2
          types = component.types
          if types.indexOf("administrative_area_level_1") > -1 && types.indexOf("political") > -1
            result = 
              longName: component.long_name
              shortName: component.short_name

            break
    return result

  showError: (error) =>
    switch error.code
      when error.PERMISSION_DENIED then console.error "User denied the request for Geolocation."
      when error.POSITION_UNAVAILABLE then console.error "Location information is unavailable."
      when error.TIMEOUT then console.error "The request to get user location timed out."
      when error.UNKNOWN_ERROR then console.error "An unknown error occurred."

    if @errorCb
      @errorCb error
    

window.GeoLocation = GeoLocation