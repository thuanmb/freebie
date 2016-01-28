class Request < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  belongs_to :mailboxer_conversation, class_name: "Mailboxer::Conversation"
end
