removeForm = ->
  $('form').on 'click' , '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val(1)
    $(this).closest('fieldset').hide()
    event.preventDefault()

addForm = ->
  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

$(document).ready removeForm
$(document).on "page:load", removeForm

$(document).ready addForm
$(document).on "page:load", addForm