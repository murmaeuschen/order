class My.Views.OrdersEdit extends Backbone.View

  el: '#container'

  template: JST['orders/new'] #todo

  initialize: ->
    @model.on('change', @render, @)
    @render()

  render: ->
    $(@el).html(@template(order: @model))
  