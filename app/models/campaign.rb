class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :campaign_items
  has_many :donations

  def remaining_days 
    (self.end_date - Date.today).to_i
  end

  def publish
    self.status = 'Published'
    self.save
  end

  def expire
    self.status = 'Expired'
    self.save
  end

  def finish
    self.status = 'Finished'
    self.save
  end

  def location
    return '' unless self.gmap_location.present?
    self.gmap_location.html_safe
  end 

  def self.public_campaigns
    Campaign.where('status != ?', 'Draft')
  end

end
