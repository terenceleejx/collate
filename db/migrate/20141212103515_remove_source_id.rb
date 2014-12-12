class RemoveSourceId < ActiveRecord::Migration
  def change
  	remove_column :quantities, :source_id
  end
end
