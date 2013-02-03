class My.Views.OrderItemsItem extends Backbone.View

  template: JST['order_items/item']
  tagName: 'tr'

  events:
    'click #edit'   : 'goToEdit'
    'click #destroy': 'destroy' 
   
  render: ->
    $(@el).html(@template(item: @model))
    @

  goToEdit: ->   
    #Backbone.history.navigate("#{@model.get('id')}/edit", true)

  destroy: ->
    #/api/orders/6/order_items/7.json
    order_id = @model.collection.order_id.order_id
    @model['url'] =  "/api/orders/" + order_id + "/order_items/" + @model.get("id")
    @model.destroy() if confirm 'Are you sure you want to delete this item?'