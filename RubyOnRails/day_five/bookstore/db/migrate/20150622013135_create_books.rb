class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :display_order
      t.float :price
      t.text :description
      t.string :isbn
      t.string :cover_url
      t.string :author
      t.string :icon_path
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
