class CreateKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :kittens do |t|
      t.string :photo
      t.string :description
      t.string :name
      t.integer :age
      t.string :breed
      t.string :origin
      t.float :price

      t.timestamps
    end
  end
end
