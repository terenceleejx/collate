class Datasets < ActiveRecord::Migration
  def change
  	rename_table :sets, :datasets
  	rename_table :quantity_sets, :quantity_datasets
  end
end
