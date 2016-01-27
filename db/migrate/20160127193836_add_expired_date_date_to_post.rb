class AddExpiredDateDateToPost < ActiveRecord::Migration
  def change
    add_column :posts, :expiring_date, :datetime
  end
end
