class Charts < ActiveRecord::Migration
  def change
  	create_table :chart do |t|
  		t.text :name, null: false
  		t.timestamps
  	end
  end
end
