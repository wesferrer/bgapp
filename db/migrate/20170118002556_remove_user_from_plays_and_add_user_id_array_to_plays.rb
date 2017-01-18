class RemoveUserFromPlaysAndAddUserIdArrayToPlays < ActiveRecord::Migration
  def change
    remove_column :plays, :users
    add_column :plays, :user_ids, :integer, array: true, default: []
  end
end
