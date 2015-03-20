class Post < ActiveRecord::Base
  validates :entry, :presence => true
  validates :title, :presence => true
end
