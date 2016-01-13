class CampaignItem < ActiveRecord::Base
  belongs_to :campaign

  def progress 
    return 100 * self.collected_qty / self.target_qty unless self.target_qty.nil?
    return 0
  end   
end
