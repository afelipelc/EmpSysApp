# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#my ready globalfunction
ready = undefined
ready = ->
  $("#categoria").on "change", ->
    $("#productsfilter").submit()
    return

  return
#end my ready global function

#when document ready
jQuery ready

#When page is loaded by turbolink
$(document).on "page:load", ready