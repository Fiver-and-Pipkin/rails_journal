require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe "the edit a blog post process" do

  it "edits a post" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Title', :with => 'My First Post'
    fill_in 'Entry', :with => 'Nevermind. I want ice cream'
    click_on 'Update Post'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no title is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Title', :with => ''
    fill_in 'Entry', :with => 'Nevermind. I want ice cream'
    click_on 'Update Post'
    expect(page).to have_content 'errors'
  end

  it "gives error when no entry is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Title', :with => 'My First Post'
    fill_in 'Entry', :with => ''
    click_on 'Update Post'
    expect(page).to have_content 'errors'
  end
end
