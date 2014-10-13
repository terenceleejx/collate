class SelfjoinCategory < ActiveRecord::Migration
  def change
  	drop_table :categories
  	drop_table :category_topics
    add_column :topics, :category_id, :integer
  end
end
