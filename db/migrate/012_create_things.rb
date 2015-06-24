class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.belongs_to :category
      t.string :name
      t.text :description
      t.string :barcode

      t.timestamps null: false
    end
    add_index :things, :category_id, unique: true
    add_foreign_key :things, :categories
  end
end
