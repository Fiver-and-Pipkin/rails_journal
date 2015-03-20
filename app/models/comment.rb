class Comment < ActiveRecord::Base
  belongs_to :post

  validates :commenter_name, :presence => true
  validates :thoughts, :presence => true
end
