class RemoveItemstableFromOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :itemstable	
  end

  def down
  	add_column :orders, :itemstable, :references
  end
end
