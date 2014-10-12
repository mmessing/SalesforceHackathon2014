# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ -> new class Nav
  constructor: ->
    $ 'html'
      .hammer()
      .on 'tap', @close
      .on 'swiperight', @open
      .on 'swipeleft', @close

    $ '#nav-toggle'
      .on 'mouseup', (event) -> event.stopPropagation()
      .on 'click', (event) =>
        if $('#nav-toggle.pushed')[0] then @close() else @open()

  open: ->
    $('nav').addClass 'open'
    $('#nav-toggle').addClass 'pushed'

  close: ->
    $('nav').removeClass 'open'
    $('#nav-toggle').removeClass 'pushed'
