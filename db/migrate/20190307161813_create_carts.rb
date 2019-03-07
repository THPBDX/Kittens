class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.references :kitten, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end