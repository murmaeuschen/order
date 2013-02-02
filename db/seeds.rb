# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


items = Item.create([{ item_name: "Orange1", item_description: "Orange1", dimension: "Box", price: 10 },
                     {item_name: "Onion1", item_description: "Onion1", dimension: "Box", price: 2 }])


order1=Order.create(order_number: '000001', 
	         total_price: 10,
	         total_num_of_items: 5,
	         max_discount: 0,
	         status: "Ordered",	        
	         role: "Administrator",
	         date_of_ordering: Time.now, 
             delivery_date: Time.now,
             pref_delivery_date: Time.now,  
             credit_card_type: "MasterCard")

itemstable1 = Itemstable.create(price_per_line: 50, quantity: 1, item_id: items[0].id)
itemstable2 = Itemstable.create(price_per_line: 20, quantity: 2, item_id: items[1].id)

order1.itemstables<<itemstable1
order1.itemstables<<itemstable2

order2=Order.create(order_number: '000002', 
	         total_price: 10,
	         total_num_of_items: 5,
	         max_discount: 0,
	         status: "Delivered",	        
	         role: "Merchandiser",
	         date_of_ordering: Time.now, 
             delivery_date: Time.now,
             pref_delivery_date: Time.now,  
             credit_card_type: "American Express")

itemstable21 = Itemstable.create(price_per_line: 100, quantity: 2, item_id: items[0].id)

order2.itemstables<<itemstable21



