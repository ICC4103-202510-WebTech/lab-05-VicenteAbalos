class FixEmailColumn < ActiveRecord::Migration[8.0]
  def change
    change_table :users do |t|
      t.remove :email
      t.string :email, null: false, default: ""
    end
  end
end
