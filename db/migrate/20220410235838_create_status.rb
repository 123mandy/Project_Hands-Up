class CreateStatus < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.text :completion
      t.timestamps
    end
  end
end
