class RemoveCat < ActiveRecord::Migration
  def change
  	remove_column :topics, :category_id
  end
end
