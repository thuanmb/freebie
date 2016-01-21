class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_items

  has_attached_file :main_image,
  								styles: {medium: "300x300>", thumb: "100x100>"},
                  :path => ":rails_root/app/assets/images/posts/:id/:style_:basename.:extension",
                  :url => "/app/assets/images/posts/:id/:style_:basename.:extension"
  validates_attachment_content_type :main_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def main_image_url
    image_url.present? ? image_url : main_image.url
  end 

end
