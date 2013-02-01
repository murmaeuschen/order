class Itemstable < ActiveRecord::Base
  has_many :items
  attr_accessible :price_per_line, :quantity
end
