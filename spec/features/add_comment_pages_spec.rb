require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe "the add a comment process", js: true do
  it "adds a new comment" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Add a comment'
    fill_in 'Commenter name', :with => 'Snake'
    fill_in 'Thoughts', :with => 'FIRRRST!'
    click_on 'Create Comment'
    expect(page).to have_content 'posted by SNAKE'
  end

  it "gives error when no commenter name is entered", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Add a comment'
    fill_in 'Commenter name', :with => ''
    fill_in 'Thoughts', :with => 'FIRRRST!'
    click_on 'Create Comment'
    expect(page).to have_content 'errors'
  end

  it "gives error when no thoughts are entered", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Add a comment'
    fill_in 'Commenter name', :with => 'Snake'
    fill_in 'Thoughts', :with => ''
    click_on 'Create Comment'
    expect(page).to have_content 'errors'
  end
end
