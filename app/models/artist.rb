class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos

  validates :artist_name, presence: true
end
