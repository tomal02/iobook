require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    sign_up
    visit "/posts"
    post
    expect(page).to have_content("Hello, world!")
  end
  scenario "Can delete posts" do
    sign_up
    visit "/posts"
    post
    click_link "Delete post"
    expect(page).not_to have_content("Hello, world!")
  end
  scenario "Can edit a post" do
    sign_up
    visit "/posts"
    post
    click_link "Edit post"
    edit
    expect(page).to have_content("Hello")
  end
end

