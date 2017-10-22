class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :artist_name, :age, :bio

  has_many :songs
  has_many :photos
end
