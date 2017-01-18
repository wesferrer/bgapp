class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :name
      t.date :date
      t.string :users
      t.string :duration
      t.string :location
      t.text :comments
      t.integer :game_id, index: true
      t.integer :user_id, index: true
      t.timestamps null: false
    end
  end
end
