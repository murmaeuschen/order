class My.Views.OrdersEdit extends Backbone.View

  el: '#container'

  template: JST['orders/edit'] 

  initialize: ->
    @model.on('change', @render, @)
    @render()

  render: ->
    $(@el).html(@template(order: @model))
  