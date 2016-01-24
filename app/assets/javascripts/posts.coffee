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