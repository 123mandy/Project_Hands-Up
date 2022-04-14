class AddImagesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image, :text, :array => true, :default => []
  end
end
