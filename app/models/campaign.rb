class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :campaign_items
  has_many :donations
  has_many :category_links, as: :item
  has_many :categories, through: :category_links, source: :category

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

  def overall_progress
    return 0 if self.campaign_items.size == 0
    return ( self.campaign_items.inject(0.0) { |sum, e| sum + e.progress } / self.campaign_items.size ).round
  end

  def set_categories category_ids
    if category_ids
      self.categories = Category.where(id: category_ids)
    end
  end

  def self.public_campaigns
    Campaign.where('status != ?', 'Draft')
  end

  def self.top3
    @campaigns = Campaign.where('status != ?', 'Draft').take(3)
  end

end
