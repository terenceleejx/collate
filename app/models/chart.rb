class Chart < ActiveRecord::Base
	validates :name, presence: true
end