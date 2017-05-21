class Product < ApplicationRecord
	validates_numericality_of :price
	validates_numericality_of :stock, :only_interger => true, :greater_than_or_equals_to_zero => 0
    has_many :order_items, dependent: :destroy
end
