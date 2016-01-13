class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :is_admin
      t.boolean :is_organization
      t.string :avatar_url
      t.text :description
      t.string :contact_address
      t.string :contact_city

      t.timestamps null: false
    end
  end
end
