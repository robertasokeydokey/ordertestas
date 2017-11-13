class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :service_id
      t.integer :offer_id
      t.integer :discount_id
      t.decimal :discount, precision: 8, scale: 2
      t.decimal :price, precision: 8, scale: 2
      t.integer :cart_id
      t.integer :quantity
      t.datetime :valid_from
      t.datetime :valid_until
      t.boolean :for_friend
      t.string :friends_name
      t.string :gift_sender_name
      t.integer :delivery_method
      t.string :friends_email
      t.text :gift_message

      t.timestamps
    end
  end
end
