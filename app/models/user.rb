class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: true
  has_many :games
  has_many :plays
  has_many :games_played, through: :plays, source: :game

end
