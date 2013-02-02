class RemoveItemIdFromItemstable < ActiveRecord::Migration
  def up
    remove_column :itemstables, :item_id	
  end

  def down
  	add_column :itemstables, :item_id, :references
  end
end
