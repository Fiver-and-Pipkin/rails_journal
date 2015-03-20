require 'rails_helper'

describe Comment do
  it { should validate_presence_of :commenter_name }
  it { should validate_presence_of :thoughts }
  it { should belong_to :post }
end
