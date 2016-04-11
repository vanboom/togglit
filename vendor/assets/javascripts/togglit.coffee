togglit = (toggler, id, container="", speed=200) ->
  if container
    $(container).toggle()
  $(toggler).toggleClass('fa-caret-right fa-caret-down')
  $(id).slideToggle(speed)

@bind_togglit = ->
  $("[data-togglit]").unbind "click.togglit"
  $("[data-togglit]").bind "click.togglit", ->
    togglit($(this).children("i"), $(this).data('togglit'), $(this).data('container'))
    return false

@togglit_all_hide = (root=document) ->
  $(root).find("[data-togglit]").map ->
    $($(this).data("togglit")).hide()

@togglit_all_show = (root=document) ->
  $(root).find("[data-togglit]").map ->
    $($(this).data("togglit")).show()


$(document).ready ->
  bind_togglit()
