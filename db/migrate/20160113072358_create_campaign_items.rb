class CreateCampaignItems < ActiveRecord::Migration
  def change
    create_table :campaign_items do |t|
      t.references :campaign, index: true, foreign_key: true
      t.string :name
      t.integer :target_qty
      t.integer :collected_qty
      t.string :label

      t.timestamps null: false
    end
  end
end
