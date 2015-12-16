@togglit = (parent, id, container="div", speed=600) ->
  $(id).closest(container).toggle()
  $(parent).toggleClass('fa-caret-down fa-caret-up')
  $(id).slideToggle("fast")

$(document).ready ->
  $("[data-togglit]").bind "click", ->
    togglit($(this).children("i"), $(this).data('togglit'), $(this).data('container'))
