class ActorsController < ApplicationController
  include FilmFan::Commentable
  
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end
end
