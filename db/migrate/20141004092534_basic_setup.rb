class BasicSetup < ActiveRecord::Migration
  def change
		create_table :categories do |t|
  		t.string :name, null: false
  		t.timestamps
  	end

  	create_table :topics do |t|
  		t.string :name, null: false
   		t.timestamps
  	end

  	create_table :quantities do |t|
  		t.text :name, null: false
  		t.decimal :number, null: false
  		t.date :date
   		t.belongs_to :source
  		t.timestamps
  	end

  	create_table :units do |t|
  		t.text :name, null: false
  		t.belongs_to :quantity
  		t.timestamps
  	end

  	create_table :sources do |t|
  		t.text :URL
  		t.text :title, null: false
  		t.timestamps
  	end
  end
end
