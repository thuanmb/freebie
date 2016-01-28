class AddConversationRefToRequest < ActiveRecord::Migration
  def change
    add_reference :requests, :mailboxer_conversation, index: true, foreign_key: true
  end
end
