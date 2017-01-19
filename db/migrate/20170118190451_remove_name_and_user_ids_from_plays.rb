class RemoveNameAndUserIdsFromPlays < ActiveRecord::Migration
  def change
    remove_column :plays, :name
    remove_column :plays, :user_ids
  end
end
