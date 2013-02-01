window.My =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new My.Routers.Orders()
    Backbone.history.start(pushState: true)	

$(document).ready ->
  My.initialize()
