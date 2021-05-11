class ItemCount < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :item_count, :integer
  end
end
