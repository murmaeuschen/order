class My.Routers.Orders extends Backbone.Router
  routes:
    '': 'index'
    'orders/:id': 'show'
    'new': 'newOrder'
    
  initialize: ->
    @collection = new My.Collections.Orders();
    @collection.fetch()	    

  index: ->
    view = new My.Views.OrdersIndex(collection: @collection)  	
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Order #{id}"

  newOrder: ->
    view = new My.Views.OrdersNew({collection: @collection})  	
  