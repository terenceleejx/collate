class QuantityParent < ActiveRecord::Migration
  def change
  	add_column :quantities, :parent_id, :integer
  end
end
