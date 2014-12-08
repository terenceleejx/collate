class ChartTopics < ActiveRecord::Migration
  def change
  	drop_table :quantity_charts
   	create_table :chart_topics do |t|
  		t.belongs_to :topic
  		t.belongs_to :chart
  		t.timestamps
  	end
  end
end
