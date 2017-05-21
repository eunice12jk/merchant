class OrderItem < ApplicationRecord
	belongs_to :order
	has_many :products, dependent: :destroy
	validates :quantity, presence: true, :numericality { only_interger: true, greater_than: 0 }
end
