class AddLongitudeToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :longitude, :decimal, :precision => 10, :scale => 6
  end
end
