class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :campaign, index: true, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
