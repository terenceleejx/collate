class NotesQuantities < ActiveRecord::Migration
  def change
  	add_column :quantities, :notes, :text
  end
end
