class AddUseridToMessage < ActiveRecord::Migration
  def up
    add_column :messages, :user_id, :integer
    add_column :messages, :target_id, :integer
  end
  def down
    remove_column :messages, :user_id, :integer
    remove_column :messages, :target_id, :integer
  end
end
