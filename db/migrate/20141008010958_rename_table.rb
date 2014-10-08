class RenameTable < ActiveRecord::Migration
  def change
  	rename_table :chart_dataset, :chart_datasets
  end
end
