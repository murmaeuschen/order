class My.Views.OrdersEdit extends Backbone.View

  el: '#container'

  template: JST['orders/details'] 

  initialize: ->
    @model.on('change', @render, @)        
    @render()
    @fillFields()

  render: ->    
    $(@el).html(@template(order: @model))    
    @
  
  fillFields: ->    
    $(@el).find('#order_number').val(@model.attributes.order_number)
    $(@el).find('#status').html(@model.attributes.status)    
    $(@el).find('#total_price').html(@model.attributes.total_price)
    $(@el).find('#total_num_of_items').html(@model.attributes.total_num_of_items)
    $(@el).find('#date_of_ordering').html(@model.attributes.date_of_ordering)
    $(@el).find('#pref_delivery_date').val(@model.attributes.pref_delivery_date)
    $(@el).find('#delivery_date').html(@model.attributes.delivery_date)
    $(@el).find('#assignee').val(@model.attributes.assignee)       
    $(@el).find('#credit_card_type').val(@model.attributes.credit_card_type)    
    #$(@el).find('input:radio:checked').val(@model.attributes.role)