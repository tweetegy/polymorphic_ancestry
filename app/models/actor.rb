class Actor < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_and_belongs_to_many :movies
  has_many :comments, :as => :commentable, :dependent => :destroy

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
