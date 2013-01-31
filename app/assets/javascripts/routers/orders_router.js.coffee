class My.Routers.Orders extends Backbone.Router
  routes:
  	'': 'index'
  	'orders/:id' : 'show'

  index: ->
  	alert "home page"

  show: (id) ->
    alert "Order #{id}"	