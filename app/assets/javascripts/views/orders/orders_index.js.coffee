class My.Views.OrdersIndex extends Backbone.View

  template: JST['orders/index']

  initialize: ->
    @collection.on('reset', @render, @)

  render: ->
  	$(@el).html(@template(collection: @collection))
  	@
