class MoviesController < ApplicationController

  def show
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to @movie
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :short_desc, :description)
  end

end
