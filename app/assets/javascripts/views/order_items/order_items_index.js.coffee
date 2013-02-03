class My.Views.OrderItemsIndex extends Backbone.View

  tagName: 'tbody'
  template: JST['order_items/index']

  initialize: ->
    @collection.on('reset', @render, @)

  render: ->
  	$(@el).html(@template(order_items: @collection))  
  	@

  