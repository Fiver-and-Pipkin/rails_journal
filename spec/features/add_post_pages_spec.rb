require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe "the add a blog post process" do
  it "adds a new blog post" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit posts_path
    post = FactoryGirl.create(:post)
    visit post_path(post)
    expect(page).to have_content 'example entry'
  end

  it "gives error when no title is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_post_path
    click_on 'Create Post'
    fill_in 'Entry', :with => 'This is my first entry'
    expect(page).to have_content 'errors'
  end

  it "gives error when no entry is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_post_path
    click_on 'Create Post'
    fill_in 'Title', :with => 'My First Post'
    fill_in 'Entry', :with => ''
    expect(page).to have_content 'errors'
  end
end
