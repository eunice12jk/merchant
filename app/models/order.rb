class Order < ApplicationRecord
	has_many :order_items, dependent: :destroy


	def total
		total=0
		self.order_items.each{|item| total += item.subtotal}
	end

end

def total
	#add all subtotals for each order_items
end