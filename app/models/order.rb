class Order < ApplicationRecord
	has_many :order_items, dependent: :destroy
end

def total
	#add all subtotals for each order_items
end