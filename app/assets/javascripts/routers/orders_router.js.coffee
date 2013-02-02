class My.Routers.Orders extends Backbone.Router
  routes:
    ""           : "index"
    "orders/:id" : "show"
    "new"        : "newOrder"
    ":id/edit"   : "edit"
    ":id/show"   : "show"
   
    
  initialize: ->
    @collection = new My.Collections.Orders();
    @collection.fetch()	    

  index: ->
    view = new My.Views.OrdersIndex(collection: @collection)  	
    $('#container').html(view.render().el)
  
  show: (id) ->
    $.getJSON "/api/orders/"+id+".json", (data) ->
      console.log(data)
    order = @collection.get(id)    
    view = new My.Views.OrdersEdit({model: order, details: "details"})

  newOrder: ->
    view = new My.Views.OrdersNew({collection: @collection})

  edit: (id) ->    
    order = @collection.get(id)   
    view = new My.Views.OrdersEdit(model: order)
   
    
  