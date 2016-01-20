class CampaignItem < ActiveRecord::Base
  belongs_to :campaign

  def progress 
    return 100.0 if self.target_qty == 0
    return (100.0 * self.collected_qty / self.target_qty).round unless self.target_qty.nil?
    return 0
  end   
end
