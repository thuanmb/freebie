class AddPostIdToPostItems < ActiveRecord::Migration
  def change
    add_column :post_items, :post_id, :integer
  end
end
