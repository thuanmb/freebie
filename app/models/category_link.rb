class CategoryLink < ActiveRecord::Base
  belongs_to :item, polymorphic: true
  belongs_to :category

  def CategoryLink.find_posts category_ids
    CategoryLink.select(:item_id).distinct.find_in(category_ids).where("item_type = 'Post'")
  end
end
