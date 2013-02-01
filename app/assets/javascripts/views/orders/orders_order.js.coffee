class My.Views.OrdersOrder extends Backbone.View

  template: JST['orders/order']
  tagName: 'tr'

  events:
    'click #edit': 'goToEdit'
   
  render: ->
    $(@el).html(@template(order: @model))
    @

  goToEdit: ->   
    Backbone.history.navigate("#{@model.get('id')}/edit", true)   
