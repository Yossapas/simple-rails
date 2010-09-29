class Post < ActiveRecord::Base
  #attr_accessible :title, :body, :published
  has_many :comment, :as => :commentable
end
