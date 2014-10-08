class ChartDataset < ActiveRecord::Migration
  def change
  	create_table :chart_dataset do |t|
  		t.belongs_to :chart
  		t.belongs_to :database
  		t.timestamps
  	end
  end
end
