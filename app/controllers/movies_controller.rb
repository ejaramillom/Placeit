class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def new
    @movie = Movie.new
  end
  def create
    @movie = Movie.new(movie_params)
  if @movie.save
    redirect_to movies_path, notice: "La película fue publicada con éxito"
  else
    render :new
  end
  def show
    @movie = Movie.find(params[:id])
  end


end

private
  def movie_params
    params.require(:movie).permit(:name, :url, :description, :date)
  end
end
