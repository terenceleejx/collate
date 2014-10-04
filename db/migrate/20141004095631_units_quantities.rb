class UnitsQuantities < ActiveRecord::Migration
  def change
  	remove_column :units, :quantity_id
  	add_column :quantities, :unit_id, :integer
  end
end
