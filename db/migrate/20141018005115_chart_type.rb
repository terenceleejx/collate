class ChartType < ActiveRecord::Migration
  def change
  	create_table :chart_types do |t|
  		t.string :name
  		t.timestamps
  	end
  	change_column :datasets, :topic_id, :integer, :null => false
  end
end
