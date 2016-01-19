class AddMoreDataToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :gmap_location, :string
    add_column :campaigns, :donation_instruction, :string
  end
end
