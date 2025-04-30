class AddAssociationBetweenUserAndMessage < ActiveRecord::Migration[8.0]
  def change
    change_table :messages do |t|
      t.remove :user_id
    end
  end
end
