class CreateCategoryLinks < ActiveRecord::Migration
  def change
    create_table :category_links do |t|
      t.references :category
      t.integer :item_id
      t.string :item_type

      t.timestamps null: false
    end
  end
end
