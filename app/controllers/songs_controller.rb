class SongsController < ApplicationController

  def index
    @songs = artist.songs
  end

  def show; end

  def new
    @song = artist.songs.build
  end

  def create
    @song = artist.songs.build(song_params)

    if @song.save
      redirect_to @song, notice: "Room created"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @song.update(song_params)
      redirect_to @song, notice: "Room updated"
    else
      render :edit
    end
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params
      .require(:song_name)
  end
end

end
