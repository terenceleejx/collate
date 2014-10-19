class CharttypeNullfalse < ActiveRecord::Migration
  def change
		change_column :charts, :chart_type_id, :integer, :null => false
  end
end
