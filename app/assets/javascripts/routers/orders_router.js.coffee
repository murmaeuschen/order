class My.Routers.Orders extends Backbone.Router
  routes:
    ""           : "index"
    "orders/:id" : "show"
    "new"        : "newOrder"
    ":id/edit"   : "edit"
   
    
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

  edit: (id) ->
    order = @collection.get(id)
    console.log(order)
    view = new My.Views.OrdersEdit({model: order})
   
    
  