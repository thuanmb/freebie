class AddCategoryLinkRefToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :category_link, index: true, foreign_key: true
  end
end
