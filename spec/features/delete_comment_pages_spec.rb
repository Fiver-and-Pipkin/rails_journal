require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe "the delete a comment process" do
  it "deletes a comment" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit posts_path
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Add a comment'
    fill_in 'Commenter name', :with => 'snake'
    fill_in 'Thoughts', :with => 'FIRRRRST!'
    click_on 'Create Comment'
    click_on 'Delete Comment'
    expect(page).to have_content 'deleted'
  end
end
