class My.Routers.Orders extends Backbone.Router
  routes:
  	'': 'index'
  	'orders/:id' : 'show'

  index: ->
  	view = new My.Views.OrdersIndex()
  	$('#container').html(view.render().el)

  show: (id) ->
    alert "Order #{id}"	