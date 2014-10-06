class Dataset < ActiveRecord::Base
	has_many :quantity_datasets
	has_many :quantities, through: :quantity_datasets
	validates :name, presence: true
end