class My.Views.OrdersEdit extends Backbone.View

  el: '#container'

  template: JST['orders/details'] 

  initialize: ->
    @model.on('change', @render, @)        
    @render()
    @fillFields()
    @fillTable()

  render: ->    
    $(@el).html(@template(order: @model))    
    @

  #appendOrdersitem: (ordersitem) ->
    #console.log ordersitem.get('item_description')
    #view = new My.Views.OrdersItem(model: ordersitem)
    #@$('tbody').append(view.render().el)      
  
  fillFields: ->    
    $(@el).find('#order_number').val(@model.attributes.order_number)
    $(@el).find('#status').html(@model.attributes.status)    
    $(@el).find('#total_price').html(@model.attributes.total_price)
    $(@el).find('#total_num_of_items').html(@model.attributes.total_num_of_items)
    $(@el).find('#date_of_ordering').html(@model.attributes.date_of_ordering)
    $(@el).find('#pref_delivery_date').val(@model.attributes.pref_delivery_date)
    $(@el).find('#delivery_date').html(@model.attributes.delivery_date)
    $(@el).find('#assignee').val(@model.attributes.role)       
    $(@el).find('#credit_card_type').val(@model.attributes.credit_card_type)
  
  fillTable: ->     
    #@ordersitems = new My.Collections.Ordersitems();
    #@ordersitems.fetch()
    #console.log @ordersitems
    #@ordersitems.each(@appendOrdersitem) 

    for x of @model.order_items()
      view = new My.Views.Ordersitem(model: data[x])
      $('#items_table tbody').append(view.render().el)
