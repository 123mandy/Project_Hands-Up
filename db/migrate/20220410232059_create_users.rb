class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :email
      t.text :password_digest
      t.text :image
      t.integer :assign_id
      t.timestamps
    end
  end
end
