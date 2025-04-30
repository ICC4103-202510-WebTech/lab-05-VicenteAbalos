class FixAssociationBetweenUserAndChat < ActiveRecord::Migration[8.0]
  def change
    change_table :chats do |t|
      t.remove :sender_id_id
      t.references :sender_id, foreign_key: {to_table: :users}
      t.remove :receiver_id_id
      t.references :receiver_id, foreign_key: {to_table: :users}
    end
  end
end
