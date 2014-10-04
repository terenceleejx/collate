class QuantityTopic < ActiveRecord::Migration
  def change
    create_table :quantity_topic do |t|
      t.belongs_to :topic
      t.belongs_to :quantity
    end
  end
end
