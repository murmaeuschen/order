class Itemstable < ActiveRecord::Base
  belongs_to :item
  attr_accessible :price_per_line, :quantity
end
