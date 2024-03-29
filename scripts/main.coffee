---
---
$ ->
  _window = $(window)
  animation_trigger_elements = $('article p[data-image-toggle]')

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
        $('aside img[data-image=' + element.data('image-toggle') + ']').addClass 'in-view'
        false

    $('aside img[data-image]').last().addClass('in-view') if $('aside img[data-image].in-view').size() is 0

  $('#toc h2.toggle').hover ->
    $(this).parents('div[data-toggle-target=' + $(this).data('toggle') + ']').toggleClass 'hover'

  add_menu_animations = ->
    toggled_items = $('#menu, #mask')
    $('#menu-show').on 'click', (e) ->
      e.preventDefault()
      $(toggled_items).addClass 'is-active'
    $('#menu-close, #mask').on 'click', (e) ->
      e.preventDefault()
      $(toggled_items).removeClass 'is-active'

  if (screen and screen.width >= 992)
    _window.on 'scroll resize', check_if_in_view
    _window.trigger 'scroll'

  add_menu_animations()
