---
---
$ ->
  $('main [data-anchor]').waypoint
    handler: ->
      console.log this
