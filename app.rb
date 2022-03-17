require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'


class BookmarkManager < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # Add routes here
  get '/' do
    "Hello"

    erb :index
  end

  post '/name' do
    @user_name = params[:user_name]
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks

  end

  post "/new_bookmark" do
    @url = params[:new_url]
    @title = params[:new_title]
    Bookmark.create(url: @url, title: @title)

    redirect :bookmarks
  end
  
  # dont delete this
  run! if app_file == $0
end