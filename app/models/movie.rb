class Movie < ActiveRecord::Base
  attr_accessible :title, :duration
  has_and_belongs_to_many :actors
  has_many :comments, :as => :commentable, :dependent => :destroy
end