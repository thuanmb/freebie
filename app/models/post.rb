require 'textacular'

class Post < ActiveRecord::Base.extend(Textacular)
  self.per_page = 20

  belongs_to :user
  has_many :requests
  validates :status, inclusion: { in: %w(drafted published closed) }
  has_one :category_link, as: :item
  has_one :category, through: :category_link, source: :category
  has_many :requests

  has_attached_file :main_image, styles: {medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/

  scope :published, ->()                    { where('status = ?', 'published') }
  scope :by_keyword, ->( keyword )          { basic_search(keyword) }
  scope :by_location, ->( location_id )     { where( location: location_id) }
  scope :by_categories, ->( category_ids )  { joins(:category_link).where(category_links: {category_id: category_ids}) }

  def published?
    self.status == 'published'
  end

  def closed?
    self.status == 'closed'
  end

  def publish
    self.status = 'published' unless self.status == 'published'
  end

  def close
    self.status = 'closed' unless self.status == 'closed'
  end

  def set_category category_id
    if category_id
      self.category = Category.where(id: category_id).first
    end
  end

  def self.search(query)
    Post.basic_search(query)
  end

  def Post.find_by_categories category_ids
    Post.joins(:category_link).where(category_links: {category_id: category_ids})
  end

end
