class Game < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :users
  has_many :plays
  has_many :players, through: :plays, source: :user
  validates :image,  presence: true
end
