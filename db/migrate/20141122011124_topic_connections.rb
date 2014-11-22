class TopicConnections < ActiveRecord::Migration
  def change
  	create_table "topic_connections", :force => true, :id => false do |t|
  		t.integer "topic_a_id", :null => false
  		t.integer "topic_b_id", :null => false
		end
  end
end
