class AddImageToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :image_url
    add_attachment :posts, :image
  end
end
