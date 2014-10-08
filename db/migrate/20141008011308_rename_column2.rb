class RenameColumn2 < ActiveRecord::Migration
  def change
  	rename_column :chart_datasets	, :database_id, :dataset_id
  end
end
