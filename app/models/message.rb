class Message < ActiveRecord::Base
  belongs_to :sender, foreign_key: :user_id, class_name: 'User'
  
end
