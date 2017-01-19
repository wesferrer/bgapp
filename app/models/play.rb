class Play < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  validates :date, presence: true
end
