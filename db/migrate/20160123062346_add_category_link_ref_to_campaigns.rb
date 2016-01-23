class AddCategoryLinkRefToCampaigns < ActiveRecord::Migration
  def change
    add_reference :campaigns, :category_link, index: true, foreign_key: true
  end
end
