# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Order.create(order_number: '000002', 
	         total_price: 10,
	         max_discount: 0,
	         status: "Ordered",	        
	         role: "Administrator")

