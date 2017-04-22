class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to_many :products
	validates :quantity, presence: true, :numericality { only_interger: true, greater_than: 0 }
end
