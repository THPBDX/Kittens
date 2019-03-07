class CreateJoinTableOrderKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_order_kittens do |t|
      t.references :order, foreign_key: true
      t.references :kitten, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
