class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :size
      t.text :description
      t.float :base_price
      t.float :tax
      t.json :images

      t.timestamps
    end
  end
end
