class Catdataset < ActiveRecord::Migration
  def change
  	remove_column :charts, :category_id
  	add_column :datasets, :category_id, :integer
  end
end
