class Order < ApplicationRecord
  belongs_to :user

  has_many :join_table_order_kittens
  has_many :kittens, through: :join_table_order_kittens
end
