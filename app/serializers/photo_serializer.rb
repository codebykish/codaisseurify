class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :remote_image_url, :artist

  belongs_to :artist
end
