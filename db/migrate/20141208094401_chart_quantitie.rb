class ChartQuantitie < ActiveRecord::Migration
  def change
  	create_table :quantity_charts do |t|
  		t.belongs_to :quantity
  		t.belongs_to :chart
  		t.timestamps
  	end
  end
end
