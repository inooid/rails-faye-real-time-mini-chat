# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# create Faye client and add it to the window object
window.client = new Faye.Client('/faye')

$ ->
  # client subscribes to any things that happens within
  # the comments Faye subscription
  client.subscribe '/comments', (payload) ->
    $('#comments').find('.media-list').prepend(payload.message) if payload.message
