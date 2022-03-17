require_relative 'web_helpers'

RSpec.feature "home_page", type: :feature do
  scenario "index should display an introduction to the bookmark manager" do
    visit '/'

    expect(page).to have_content("Welcome to your Bookmark Manager")
  end

  scenario "bookmarks route displays list of bookmarks" do
    sign_in
    expect(page).to have_content("Here is a list of your bookmarks")
  end

  scenario "adding a new bookmark should show the added URL to the list of bookmarks on /bookmarks" do
    visit '/'
    sign_in

    fill_in 'new_bookmark', with: 'https://www.london.com'
    click_on 'Add'

    expect(page).to have_content("https://www.london.com")
  end

end
