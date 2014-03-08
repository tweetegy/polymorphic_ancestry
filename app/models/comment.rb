class Comment < ActiveRecord::Base
  has_ancestry
  attr_accessible :content, :parent_id, :commentable_id, :commentable_type
  belongs_to :commentable, :polymorphic => true
end