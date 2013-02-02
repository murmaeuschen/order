class My.Collections.Ordersitems extends Backbone.Collection

  model: My.Models.Ordersitem

  url: '/api/itemstables'

  initialize: (order_id) ->
    @order_id = order_id
    if order_id?
      @url += '/' + order_id + '/order_items'

