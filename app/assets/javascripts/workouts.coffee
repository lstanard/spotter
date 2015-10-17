# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('form.edit_workout_exercise input').on 'change', ->
    $(this).parents('form').submit()
    return
  return