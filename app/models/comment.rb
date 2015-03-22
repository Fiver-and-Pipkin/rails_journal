class Comment < ActiveRecord::Base
  belongs_to :post

  validates :commenter_name, :presence => true
  validates :thoughts, :presence => true
  before_save :upcase_commenter

  private

  define_method(:upcase_commenter) do
    self.commenter_name=(commenter_name().upcase())
  end

end
