class SongsController < ApplicationController
  def show
    @song = Song.find params[:id]
  end
  
  def new
    @song = Song.new
  end

  def edit
    @song = Song.find params[:id]
  end

  def create
    s = Song.create params.require(:song).permit(:name, :artist_id, :genre_id)
    redirect_to(song_path s)
  end

  def index 
    @songs = Song.all 
  end

  def update
    s = Song.update params.require(:song).permit(:name, :artist_id, :genre_id)
    redirect_to(song_path s)
  end 

  def destroy 
    redirect_to songs_path
  end
end
