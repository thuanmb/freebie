class CampaignItem < ActiveRecord::Base
  belongs_to :campaign

  def progress 
    100 * self.collected_qty / self.target_qty
  end   
end
