require 'sinatra/base'
require 'sinatra/reloader'
require './lib/catalogue.rb'


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
    @bookmarks = Catalogue.all
    erb :bookmarks

  end
  
  # dont delete this
  run! if app_file == $0
end