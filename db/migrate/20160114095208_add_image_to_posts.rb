class AddImageToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :image_url
    add_column :posts, :image, :string
  end
end
