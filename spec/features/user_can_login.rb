require 'rails_helper'
require 'feature_helpers'

RSpec.feature "Logged in", type: :feature do
  scenario "Can log in" do
    login
    expect(page).to have_content("Signed in successfully.")
  end
end