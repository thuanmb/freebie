class Category < ActiveRecord::Base
  has_many :category_links
  has_many :campaigns, through: :category_links, source: :item, source_type: 'Campaign'
  has_many :posts, through: :category_links, source: :item, source_type: 'Post'
end
