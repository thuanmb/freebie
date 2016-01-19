class ChangeImageColumnNameInPost < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.rename :image, :image_url
    end
  end
end
