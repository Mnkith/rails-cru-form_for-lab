class GenresController < ApplicationController
  def show
    @genre = Genre.find params[:id]
  end

  def new
    @genre = Genre.new
  end
  
  def edit
    @genre = Genre.find params[:id]
  end

  def create
    g = Genre.create params.require(:genre).permit(:name)
    redirect_to genre_path(g)
  end

  def index 
  end

  def update
    g = Genre.update params.require(:genre).permit(:name)
    redirect_to genre_path(g)
  end
end
