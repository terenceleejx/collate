class Ownership < ActiveRecord::Migration
  def change
  	add_column :charts, :user_id, :integer
  	add_column :datasets, :user_id, :integer
  end
end
