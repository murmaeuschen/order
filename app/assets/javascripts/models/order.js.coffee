class My.Models.Order extends Backbone.Model
  url: ->
    if @id?
      "/api/orders/#{@id}"
    else
      "/api/orders"

  #parse: (resp, options) ->
  # 	@items = new ItemsCollection(resp.items)
  # 	return resp.order