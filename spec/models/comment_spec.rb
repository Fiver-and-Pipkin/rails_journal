require 'rails_helper'

describe Comment do
  it { should validate_presence_of :commenter_name }
  it { should validate_presence_of :thoughts }
  it { should belong_to :post }


  it 'converts the commenter_name to uppercase' do
    comment = FactoryGirl.create(:comment, :commenter_name => "snake", :thoughts => "thoughts")
    comment.commenter_name.should eq "SNAKE"
  end

  # it 'is private by default' do
  #   comment = FactoryGirl.create(:comment)
  #   comment.public?.should eq false
  # end
end
