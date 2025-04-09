class AddTableUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :email, nil: false
      t.string :first_name, nil: false
      t.string :last_name, nil: false
      
      t.timestamps
    end
  end
end
