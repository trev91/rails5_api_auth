class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, index: true, unique: true
      t.string :password_digest
      t.boolean :active, null: false, default: true
      t.string :str_cust_id
      t.string :role, null: false, default: 'user'
      t.datetime :last_login

      t.timestamps
    end
  end
end
