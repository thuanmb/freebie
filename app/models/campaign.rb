class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :campaign_items
  has_many :donations

  def remaining_days 
    (self.end_date - Date.today).to_i
  end

  def status_enum
    ['Draft', 'Published', 'Collected', 'Delivered']
  end 

end
