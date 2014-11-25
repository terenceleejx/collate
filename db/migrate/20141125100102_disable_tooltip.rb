class DisableTooltip < ActiveRecord::Migration
  def change
  	add_column :charts, :tooltip, :boolean, :default => true
  end
end
