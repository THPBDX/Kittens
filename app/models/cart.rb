class Cart < ApplicationRecord
  has_one :user

  has_many :join_table_cart_kittens
  has_many :kittens, through: :join_table_cart_kittens
end
