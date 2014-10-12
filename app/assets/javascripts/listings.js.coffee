# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ -> new class Map
  constructor: ->
    if $('#map')[0]
      navigator.geolocation.getCurrentPosition (position) =>
        {latitude, longitude} = position.coords

        @map = new google.maps.Map $('#map div')[0],
          disableDefaultUI: true
          center: new google.maps.LatLng(latitude, longitude)
          zoom: 14

        google.maps.event.addListenerOnce @map, 'tilesloaded', ->
          $('#map div').css 'opacity', '1'

        new google.maps.Marker
          map: @map
          title: 'Me'
          position: new google.maps.LatLng(latitude, longitude)

        $.ajax '/listings.json'
          .done (responses) =>
            for response in responses
              new Barker
                map: @map
                data: response

class Barker
  constructor: ({map, @data}) ->
    @marker = new google.maps.Marker
      map: map
      title: 'Doge'
      position: new google.maps.LatLng(@data.latitude, @data.longitude)
      icon: '/doge-pin.png'

    google.maps.event.addListener @marker, 'click', @open

  open: (event) => new Doge @data

class Doge
  constructor: ({id, name}) ->
    @el = $ '<div class="doge">'
      .append """
        <div class="close">&#215;</div>
        <div class="name">
          <img src="/doge-pin.png" />
          <a href="listings/#{id}">#{name}</a>
        </div>
      """
      .on 'click', '.close', @close
      .appendTo 'body'

  close: =>
    @el.remove()
