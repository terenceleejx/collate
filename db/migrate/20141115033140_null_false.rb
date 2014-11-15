class NullFalse < ActiveRecord::Migration
  def change
  	change_column :charts, :user_id, :integer, :null => false
  	change_column :datasets, :user_id, :integer, :null => false
  end
end
