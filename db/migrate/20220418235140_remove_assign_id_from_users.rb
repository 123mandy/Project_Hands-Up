class RemoveAssignIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :assign_id, :integer
  end
end
