class SongsController < ApplicationController
  before_action :load_artist

  def index
   if params[:id]
    @songs = Artist.find(params[:id]).songs
   else
    @songs = Song.all
   end
  end


  def show
    @song = Song.find(params[:id])
  end

  def new
    # @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def edit
    #  @artist = Artist.find(params[:artist_id])
     @song = Song.find(params[:id])
   end


  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to artist_path(@song.artist)
  end


   def create
    #  @artist = Artist.find(params[:artist_id])
     @song = @artist.songs.create!(song_params)

     redirect_to artist_path(@artist)
   end


   def update
     @song = @artist.songs.find(params[:id])
     @song.update(song_params)

     redirect_to artist_path(@artist, @song)
   end

  @artist

   private

   def song_params
    params.require(:song).permit(:song_name)
   end

   def load_artist
     @artist = Artist.find(params[:artist_id])
   end
end
