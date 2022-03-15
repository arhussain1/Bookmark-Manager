require 'pg'

class Catalogue
  # def initialize
  #   @bookmarks = ["https://github.com/makersacademy", "https://http.cat/", "https://www.youtube.com/"]
  # end

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
end