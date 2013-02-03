class My.Collections.OrderItems extends Backbone.Collection

  model: My.Models.OrderItem

  url: '/api/orders'

  initialize: (order_id) ->
    @order_id = order_id
    if order_id?
      @url += '/' + order_id.order_id + '/order_items'
