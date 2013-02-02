class My.Views.OrdersEdit extends Backbone.View

  el: '#container'

  template: JST['orders/edit'] 

  initialize: ->
    @model.on('change', @render, @)    
    @render()

  render: ->    
    $(@el).html(@template(order: @model))    
    @
  
  fillFields: ->    
    $(@el).find('#order_number').val(@model.attributes.order_number)
    #$(@el).find('#status').text(@model.attributes.status)
    #$(@el).find('#status').html("rrrr")    
    #$(@el).find('#new_email').val(@model.attributes.email)
    #$(@el).find('#region :selected').val(@model.attributes.region)
    #$(@el).find('input:radio:checked').val(@model.attributes.role)