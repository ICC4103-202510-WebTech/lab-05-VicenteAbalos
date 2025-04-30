class AddAssociationBetweenChatAndMessage < ActiveRecord::Migration[8.0]
  def change
    change_table :messages do |t|
      t.remove :chat_id
      t.references :chat, foreign_key: true
    end
  end
end
