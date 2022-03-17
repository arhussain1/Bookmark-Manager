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
    sign_in

    fill_in 'new_url', with: 'https://www.london.com'
    fill_in 'new_title', with: 'London'
  
    click_on 'Add'

    expect(page).to have_content("London")
  end

  scenario "should give us a title on /bookmarks" do
    sign_in

    fill_in 'new_url', with: 'https://www.london.com'
    fill_in 'new_title', with: 'London'
    click_on 'Add'

    expect(page).to have_content("London")
  end

  scenario "clicking on the title take us to the website" do
    sign_in

    fill_in 'new_url', with: 'https://www.london.com'
    fill_in 'new_title', with: 'London'
    click_on 'Add'

    expect(page).to have_link('London', href: 'https://www.london.com')
  end

end
