class My.Views.OrdersItem extends Backbone.View

  template: JST['orders/item']
  tagName: 'tr'
  
  #initialize: ->
  #  @collection.on('reset', @render, @)
  
  render: ->
    console.log @model
    $(@el).html(@template(item: @model))    
    @ 
