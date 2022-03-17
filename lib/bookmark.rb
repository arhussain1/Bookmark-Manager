require 'pg'

class Bookmark
  # def initialize
  #   @bookmarks = ["https://github.com/makersacademy", "https://http.cat/", "https://www.youtube.com/"]
  # end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    query = "INSERT INTO bookmarks (url) VALUES ('#{url}');"

    connection.exec(query)

  end
end