class ChartTypeId < ActiveRecord::Migration
  def change
  	add_column :charts, :chart_type_id, :integer
  end
end
