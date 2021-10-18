require 'rails_helper'
require 'feature_helpers'

RSpec.feature "Signed up and logged in", type: :feature do
  scenario "Can log in to an existing account" do
    sign_up
    click_on "Sign out"
    login
		click_on "Sign out"
    expect(page).to have_content("Signed out successfully.")
  end
end
