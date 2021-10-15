require 'rails_helper'
require 'feature_helpers'

RSpec.feature "Signed up and logged in", type: :feature do
  scenario "Can sign up and stay logged in" do
    sign_up
    expect(page).to have_content("Signed in successfully.")
  end
end
