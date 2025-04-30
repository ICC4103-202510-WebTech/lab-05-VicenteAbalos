class AddAssociationBetweenUserAndMessages < ActiveRecord::Migration[8.0]
  def change
    change_table :messages do |t|
      t.references :user, foreign_key: true
    end
  end
end
