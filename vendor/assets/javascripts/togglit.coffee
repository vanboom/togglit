togglit = (toggler, id, container="", speed=400) ->
  if container
    $(container).toggle()
  $(toggler).toggleClass('fa-caret-down fa-caret-up')
  $(id).slideToggle(speed)

$(document).ready ->
  $("[data-togglit]").bind "click", ->
    togglit($(this).children("i"), $(this).data('togglit'), $(this).data('container'))
    return false
