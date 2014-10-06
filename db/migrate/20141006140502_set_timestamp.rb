class SetTimestamp < ActiveRecord::Migration
  def change
  	add_column :sets, :created_at, :datetime
  	add_column :sets, :updated_at, :datetime
  end
end
