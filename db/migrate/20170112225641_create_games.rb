class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :year
      t.string :designer
      t.string :publisher
      t.integer :max_players
      t.attachment :image
      t.timestamps null: false
    end
  end
end
