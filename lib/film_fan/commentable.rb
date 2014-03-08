require 'active_support/concern'

module FilmFan::Commentable
  extend ActiveSupport::Concern

  included do
    before_filter :comments, :only => [:show]
  end

  def comments
    @commentable = find_commentable
    @comments = @commentable.comments.arrange(:order => :created_at)
    @comment = Comment.new
  end

  private

  def find_commentable
    return params[:controller].singularize.classify.constantize.find(params[:id])
  end

end