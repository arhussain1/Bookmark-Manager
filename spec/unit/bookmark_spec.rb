require 'bookmark'

describe Bookmark do
  it "contains a list of websites" do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create('http://www.makersacademy.com/')
    Bookmark.create('http://www.destroyallsoftware.com')
    Bookmark.create('http://www.google.com/')

    bookmarks = Bookmark.all
    expect(bookmarks).to include "http://www.makersacademy.com/"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com/"
  end

end