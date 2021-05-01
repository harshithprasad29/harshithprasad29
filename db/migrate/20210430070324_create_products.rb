class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.text :description
      t.float :base_price
      t.float :tax
      t.json :images
      t.datetime :expiry_on
      t.float :total_price
      t.timestamps
    end
  end
end
