require "rails_helper"

RSpec.feature "Visit single post", :type => :feature do
  let(:user) { create(:user) }
  let(:post) { create(:post) }

  scenario "User goes to a single post from the home page", js: false do
    post
    visit root_path
    have_selector('body .modal')
    click_link "I'm interested"
    have_text "Posted by"
  end
end
