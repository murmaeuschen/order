class AddOrderIdAndItemIdToItemstables < ActiveRecord::Migration
  def change
    add_column :itemstables, :order_id, :integer
    add_column :itemstables, :item_id, :integer
  end
end
