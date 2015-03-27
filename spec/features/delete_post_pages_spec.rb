require 'rails_helper'

describe "the delete a blog post process" do
  it "deletes a post" do
    visit posts_path
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Delete'
    expect(page).to have_content 'deleted'
  end
end
