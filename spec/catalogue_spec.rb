require 'catalogue'

describe Catalogue do

  it "contains a list of websites" do
    bookmarks = Catalogue.all
    expect(bookmarks).to include "http://www.makersacademy.com/"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com/"
  end

end