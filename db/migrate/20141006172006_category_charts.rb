class CategoryCharts < ActiveRecord::Migration
  def change
  	add_column :charts, :topic_id, :integer
  end
end
