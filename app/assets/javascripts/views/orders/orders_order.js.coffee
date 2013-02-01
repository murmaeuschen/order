class My.Views.OrdersOrder extends Backbone.View

  template: JST['orders/order']
  tagName: 'tr'
   
  render: ->
    $(@el).html(@template(order: @model))
    @  	
