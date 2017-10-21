class SongSerializer < ActiveModel::Serializer
  attributes :id :song_name :artist

  belongs_to :artist
end
