class Associations < ActiveRecord::Migration
  def change
  	create_table :category_topics do |t|
  		t.belongs_to :category
  		t.belongs_to :topic
  	end
  end
end
