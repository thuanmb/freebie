class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :image_url
      t.string :description
      t.string :status
      t.date :end_date

      t.timestamps null: false
    end
  end
end
