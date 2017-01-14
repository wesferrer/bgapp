class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :game_id, index: true
      t.integer :user_id, index: true
      t.timestamps null: false
    end
  end
end
