class My.Views.OrdersEdit extends Backbone.View

  el: '#container'

  template: JST['orders/show'] 

  initialize: ->
    @model.on('change', @render, @)        
    @render()
    @fillTable()

  render: ->    
    $(@el).html(@template(order: @model))    
    @
    
  fillTable: ->          
    @collection_of_order_items = @model.order_items()
    view = new My.Views.OrderItemsIndex(collection: @collection_of_order_items)    
    $('#items_table').html(view.render().el)