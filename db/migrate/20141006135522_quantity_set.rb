class QuantitySet < ActiveRecord::Migration
  def change
  	create_table :sets do |t|
  		t.text :name, null: false
  	end
  	create_table :quantity_sets do |t|
  		t.belongs_to :quantity
  		t.belongs_to :set
  		t.timestamps
  	end
  	rename_table :chart, :charts
  end
end
