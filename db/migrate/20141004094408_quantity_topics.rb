class QuantityTopics < ActiveRecord::Migration
  def change
  	rename_table :quantity_topic, :quantity_topics
  	add_column :quantity_topics, :created_at, :datetime
  	add_column :quantity_topics, :updated_at, :datetime
  	add_column :category_topics, :created_at, :datetime
  	add_column :category_topics, :updated_at, :datetime
  end
end
