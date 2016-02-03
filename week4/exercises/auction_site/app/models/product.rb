class Product < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
	validates :deadline, presence: true

	belongs_to :user, 
	has_many :bids, dependent: :destroy
end
