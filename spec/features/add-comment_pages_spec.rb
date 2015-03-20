require 'rails_helper'

describe "the add a comment process" do
  it "adds a new comment" do
    post = Post.create(:title => 'My First Post', :entry => 'This is my first entry')
    visit post_path(post)
    click_on 'Add a comment'
    fill_in 'Commenter name', :with => 'Snake'
    fill_in 'Thoughts', :with => 'FIRRRST!'
    click_on 'Create Comment'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no commenter name is entered" do
    post = Post.create(:title => 'My First Post', :entry => 'This is my first entry')
    visit post_path(post)
    click_on 'Add a comment'
    fill_in 'Commenter name', :with => ''
    fill_in 'Thoughts', :with => 'FIRRRST!'
    click_on 'Create Comment'
    expect(page).to have_content 'errors'
  end

  it "gives error when no thoughts are entered" do
    post = Post.create(:title => 'My First Post', :entry => 'This is my first entry')
    visit post_path(post)
    click_on 'Add a comment'
    fill_in 'Commenter name', :with => 'Snake'
    fill_in 'Thoughts', :with => ''
    click_on 'Create Comment'
    expect(page).to have_content 'errors'
  end

end
