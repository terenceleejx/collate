class Colors < ActiveRecord::Migration
  def change
  	add_column :charts, :colors, :text
  end
end
