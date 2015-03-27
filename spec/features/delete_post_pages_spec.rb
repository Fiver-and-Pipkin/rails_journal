require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe "the delete a blog post process" do
  it "deletes a post" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit posts_path
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Delete'
    expect(page).to have_content 'deleted'
  end
end
