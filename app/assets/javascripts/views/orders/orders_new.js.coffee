class My.Views.OrdersNew extends Backbone.View

  el: '#app'

  template: JST['orders/new']

  
  initialize: ->
    @collection.on('add', @render, @)
    @render()
    
  render: ->
    @$el.html(@template())
    @