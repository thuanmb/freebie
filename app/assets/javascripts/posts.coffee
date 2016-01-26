$ ->
  searchInput = $(".search-input")
  searchInput.chosen({include_group_label_in_selected: true})

  keyword = null
  searchInput.on 'chosen:hiding_dropdown', (evt, params) ->
    keyword = $(".search-field input").val()
  
  $(".form-search").submit (e) ->
    getPathSignal = (url) ->
      return if url.indexOf("?") > -1 then "&" else "?"

    e.preventDefault();
    e.stopPropagation();

    searchInput = $(".search-input")
    selectedVal = searchInput.val()
    categories = []
    cities = []
    index = 0

    if !selectedVal && !keyword
      return;

    while selectedVal && index < selectedVal.length
      option = selectedVal[index]
      if `option.indexOf('location') == -1`
        categories.push option
      else
        cities.push option
      index++

    url = "/posts/search"
     
    if categories.length > 0
      url += getPathSignal(url) + "category=" + categories.join(",")

    if cities.length > 0
      url += getPathSignal(url) + "city=" + cities.join(",")
    
    if keyword  
      url += getPathSignal(url) + "keyword=" + keyword

    window.location.href = url

  $(".search-btn").click (e) ->
    $(".form-search").submit()

  reloadByCity = (city) ->
    params = null
    if location.search != ""
      params = location.search + "&city=" + city
    else
      params = "?city=" + city
    window.location.href = "/posts" + params

  $(".location-select .yes-btn").click (e) ->
    city = $(".location-select option:selected").text()
    localStorage.currentLocation = city
    reloadByCity city
  
  $(".location-select .no-btn").click (e) ->
    localStorage.deniedToLoadCurrentLocation = true
    $(".location-select").fadeOut()

  if location.pathname == "/posts" && (!localStorage.deniedToLoadCurrentLocation || localStorage.deniedToLoadCurrentLocation == "false")
    geoLocation = new GeoLocation ((city) ->
      if typeof(Storage) != "undefined" && city.longName != localStorage.currentLocation
        $(".location-alert .city").text city.longName
        $(".location-alert .yes-btn").click (e) ->
          localStorage.currentLocation = city.longName
          reloadByCity city.longName
        
        $(".location-alert .no-btn").click (e) ->
          $(".location-alert").fadeOut(-> 
            if (!localStorage.currentLocation)
              $(".location-select").fadeIn()
          )

        $(".location-alert").fadeIn()
    ), (-> 
      $(".location-select").fadeIn()
    )
      
      
    geoLocation.getLocation()