class Kitten < ApplicationRecord
  has_many :join_table_cart_kittens
  has_many :carts, through: :join_table_cart_kittens

  has_many :join_table_order_kittens
  has_many :orders, through: :join_table_order_kittens
end
