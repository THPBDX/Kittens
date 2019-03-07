class CreateJoinTableCartKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_cart_kittens do |t|
      t.references :cart, foreign_key: true
      t.references :kitten, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
