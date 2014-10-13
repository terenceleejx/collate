class DatasetTopic < ActiveRecord::Migration
  def change
  	rename_column :datasets, :category_id, :topic_id
  end
end
