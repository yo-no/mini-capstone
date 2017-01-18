class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.string :color
      t.integer :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
