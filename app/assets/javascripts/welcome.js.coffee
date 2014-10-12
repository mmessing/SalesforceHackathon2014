# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ '#doge'
  .on 'load', -> $('#doge').css 'opacity', '1'
  .attr 'src', $('#doge').attr 'data-src'
