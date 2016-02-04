class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true
	has_many :products, dependent: :destroy
	has_many :bids, dependent: :destroy
end
