class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :quantity_datasets, :set_id, :dataset_id
  end
end
