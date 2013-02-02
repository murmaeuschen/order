class My.Models.Ordersitem extends Backbone.Model
  url: ->
    if @id?
      "/api/orders/#{@id}"
    else
      "/api/orders"