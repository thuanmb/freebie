class Category < ActiveRecord::Base
  default_scope { order('order_number ASC') }

  has_many :category_links
  has_many :campaigns, through: :category_links, source: :item, source_type: 'Campaign'
  has_many :posts, through: :category_links, source: :item, source_type: 'Post'

  def display_name
    I18n.t ('category.' + (name || '')).to_sym
  end
end
