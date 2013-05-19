class Comment < ActiveRecord::Base
  attr_accessible :comment, :email, :name, :title 
  validates  :comment, :email, :name, :title, :presence => true
  
end
