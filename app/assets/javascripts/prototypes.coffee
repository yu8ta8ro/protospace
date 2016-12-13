# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $.each [0..3], (index) ->
    $("#js-prototype_images_attributes_"+String(index)+"_image").on 'change', (event) ->
      file = event.target.files[0]
      reader = new FileReader
      reader.readAsDataURL file
      reader.onload = (e) ->
        img = $('<img>')
        img.attr 'src', e.target.result
        $("#js-new_prototype_image"+String(index)+"").empty().append img
