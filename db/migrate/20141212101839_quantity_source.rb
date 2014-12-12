class QuantitySource < ActiveRecord::Migration
  def change
   	create_table :quantity_sources do |t|
  		t.belongs_to :quantity
  		t.belongs_to :source
  		t.timestamps
  	end
  end
end
