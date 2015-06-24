class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.belongs_to :category
      t.string :name
      t.text :description
      t.string :barcode

      t.timestamps null: false
    end
    add_index :foods, :category_id, unique: true
    add_foreign_key :foods, :categories
  end
end
