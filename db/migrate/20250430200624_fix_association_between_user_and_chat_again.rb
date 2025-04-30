class FixAssociationBetweenUserAndChatAgain < ActiveRecord::Migration[8.0]
  def change
    change_table :chats do |t|
      t.remove :sender_id_id
      t.references :sender, foreign_key: {to_table: :users}
      t.remove :receiver_id_id
      t.references :receiver, foreign_key: {to_table: :users}
    end
  end
end
