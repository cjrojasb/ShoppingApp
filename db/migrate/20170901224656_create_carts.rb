class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :total_price
      t.boolean :open

      t.timestamps
    end
  end
end
