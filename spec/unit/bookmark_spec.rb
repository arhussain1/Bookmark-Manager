require 'bookmark'

describe Bookmark do

  it ".all should return a list of bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")

    bookmarks = Bookmark.all

    expect(bookmarks.first).to be_a Bookmark
    expect(bookmarks.first.id).to eq bookmark.id
    expect(bookmarks.first.title).to eq "Makers Academy"
    expect(bookmarks.first.url).to eq "http://www.makersacademy.com"
  end

  it ".create should save the url and title for a bookmark" do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    bookmarks = Bookmark.create(url: 'http://www.makersacademy.com/', title: 'Makers')

    expect(bookmarks.url).to eq("http://www.makersacademy.com/")
    expect(bookmarks.title).to eq("Makers")
  end



end