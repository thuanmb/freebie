class CreatePostItems < ActiveRecord::Migration
  def change
    create_table :post_items do |t|
      t.string :category
      t.string :name
      t.text :description
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
