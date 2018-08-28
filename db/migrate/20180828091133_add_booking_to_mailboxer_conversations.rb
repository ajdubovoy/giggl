class AddBookingToMailboxerConversations < ActiveRecord::Migration[5.2]
  def change
    add_reference :mailboxer_conversations, :booking, foreign_key: true
  end
end
