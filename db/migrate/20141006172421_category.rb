class Category < ActiveRecord::Migration
  def change
  	remove_column :charts, :topic_id
  	add_column :charts, :category_id, :integer
  end
end
