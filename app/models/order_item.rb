class OrderItem < ApplicationRecord
	belongs_to :order

	has_many :product
	validates :order_id, :product_id, presence: true
	validates :quantity, numericality: {greater_than_or_equal_to: 1, only_integer: true}

	def subtotal
		self.quantity * self.product.price
	end
	has_many :products, dependent: :destroy
	validates :quantity, presence: true, :numericality { only_interger: true, greater_than: 0 }

end
