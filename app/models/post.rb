class Post < ActiveRecord::Base
  #attr_accessible :title, :body, :published
  has_many :comments, :as => :commentable
end
