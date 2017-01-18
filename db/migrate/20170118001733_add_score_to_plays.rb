class AddScoreToPlays < ActiveRecord::Migration
  def change
    add_column :plays, :score, :integer
  end
end
