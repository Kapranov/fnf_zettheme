class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      # t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :status
      t.string :representatives
      t.string :logo
      t.string :avatar
      t.string :attachment

      t.timestamps null: false
    end
  end
end
