class UserQuantities < ActiveRecord::Migration
  def change
  	add_column :quantities, :user_id, :integer
  end
end
