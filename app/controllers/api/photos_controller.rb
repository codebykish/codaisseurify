class Api::PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    photos = Photo.all
    render status: 200, json: photos
  end

  def show
    photo = Photo.find(params[:id])
    render status: 200, json: photo
  end

  def create
    photo = Photo.new(photo_params)

    if photo.save
      render status: 200, json: photo
    else
      render status: 422, json: {
        errors: photo.errors
      }.to_json
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy

    render status: 200, json: {
      message: "Photo successfully deleted"
    }.to_json
  end

  def update
    photo = Photo.find(params[:id])

    if photo.update(photo_params)
      render status: 200, json: photo
    else
      render status: 500, json: {
        message: "The photo could not be updated",
        errors: photo.errors
      }.to_json
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:remote_image_url, :artist)
  end
end
