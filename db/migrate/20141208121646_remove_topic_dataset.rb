class RemoveTopicDataset < ActiveRecord::Migration
  def change
  	remove_column :datasets, :topic_id
  end
end
