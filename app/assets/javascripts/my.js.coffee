window.My =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new My.Routers.Orders()
    Backbone.history.start()	

$(document).ready ->
  My.initialize()
