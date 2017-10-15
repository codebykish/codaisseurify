class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :artist_name, presence: true
  validates :bio, length: { maximum: 50 }, allow_blank: true
  validates :image_url, length: { maximum: 255 }, allow_blank: true
end
