class ArtistsController < ApplicationController
  def show
    @artist = Artist.find params[:id]
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find params[:id]
  end

  def create
    a = Artist.create params.require(:artist).permit(:name, :bio)
    redirect_to artist_path(a)
  end

  def index 
  end

  def update
    a = Artist.update params.require(:artist).permit(:name, :bio)
    redirect_to artist_path(a)
  end
end
