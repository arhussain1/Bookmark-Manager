require 'bookmark'

describe Bookmark do

  it ".all should return a list of bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
  end

  it ".create should save the url and title for a bookmark" do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    bookmarks = Bookmark.create(url: 'http://www.makersacademy.com/', title: 'Makers').first

    expect(bookmarks['url']).to eq("http://www.makersacademy.com/")
    expect(bookmarks['title']).to eq("Makers")
  end

end