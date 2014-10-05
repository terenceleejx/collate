class QuantityType < ActiveRecord::Migration
  def change
  	remove_column :quantities, :name
  	create_table :quantity_types do |t|
  		t.string :name, null: false
  		t.timestamps
  	end
  	add_column :quantities, :quantity_type_id, :integer
  end
end
