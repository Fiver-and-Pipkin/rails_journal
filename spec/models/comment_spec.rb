require 'rails_helper'

describe Comment do
  it { is_expected.to validate_presence_of :commenter_name }
  it { is_expected.to validate_presence_of :thoughts }

  it 'converts the commenter_name to uppercase' do
    comment = FactoryGirl.create(:comment, :commenter_name => "snake", :thoughts => "thoughts")
    comment.commenter_name.should eq "SNAKE"
  end
end
