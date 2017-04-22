class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.interger :product_id
      t.interger :order_id

      t.timestamps
    end
  end
end
