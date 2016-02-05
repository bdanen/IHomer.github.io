---
---
$ ->
  _window = $(window)
  animation_trigger_elements = $('article p')

  check_if_in_view = ->
    window_height = _window.height()
    window_top_position = _window.scrollTop()
    window_bottom_position = window_top_position + window_height

    $.each animation_trigger_elements, ->
      element = $(this)
      element_height = element.outerHeight()
      element_top_position = element.offset().top
      element_bottom_position = element_top_position + element_height

      if ((element_bottom_position >= window_top_position) and (element_top_position <= window_bottom_position))
        $('aside img.in-view').removeClass 'in-view'
        $('aside img[data-image=' + element.data('image') + ']').addClass 'in-view'
        false

  _window.on 'scroll resize', check_if_in_view
  _window.trigger 'scroll'
