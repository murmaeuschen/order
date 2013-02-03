class My.Views.OrdersNew extends Backbone.View

  el: '#container'

  template: JST['orders/new']

  
  initialize: ->
    @collection.on('add', @render, @)
    @render()
    
  render: ->
    @$el.html(@template())
    @