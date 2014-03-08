class MoviesController < ApplicationController
  include FilmFan::Commentable
  
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
