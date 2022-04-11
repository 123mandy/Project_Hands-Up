class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :location
      t.text :content
      t.integer :user_id
      t.integer :status_id
      t.integer :location_id
      t.timestamps
    end
  end
end
