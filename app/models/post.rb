class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_items

  has_attached_file :main_image, styles: {medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/

  def main_image_url
    image_url.present? ? image_url : main_image.url
  end 

end
