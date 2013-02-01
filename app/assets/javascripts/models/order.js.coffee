class My.Models.Order extends Backbone.Model
  url: ->
    if @id?
      "/api/orders/#{@id}"
    else
      "/api/orders"
