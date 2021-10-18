require 'rails_helper'
require 'feature_helpers'

RSpec.feature "Signed up and logged in", type: :feature do
  scenario "Can sign up and stay logged in" do
    login
		click_link "Sign out"
    expect(page).to have_content("Signed out successfully.")
  end
end
