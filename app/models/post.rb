class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_items
  validates :status, inclusion: { in: %w(drafted published closed) }

  has_attached_file :main_image, styles: {medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/

  def self.published_posts
    Post.where('status != ?', 'published')
  end

  def main_image_url
    self.image_url.present? ? self.image_url : self.main_image.url
  end 

  def published?
    self.status == 'published'
  end

  def closed?
    self.status == 'closed'
  end

  def drafted?
    self.status == 'drafted'
  end

  def publish
    self.status = 'published' unless self.status == 'published'
  end

  def close
    self.status = 'closed' unless self.status == 'closed'
  end

end
