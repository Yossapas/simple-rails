class Comment < ActiveRecord::Base
  #attr_accessible :fullname, :email, :body, :commentable_id, :commentable_type
  belongs_to :commentable, :polymorphic => true
end
