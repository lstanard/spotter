# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('form.edit_workout_exercise input').on 'change', ->
    console.log('updated')
    $(this).parents('form.edit_workout_exercise').submit()
    return
  return