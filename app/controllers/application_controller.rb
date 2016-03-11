require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end   
 
  get '/' do
     Tweet.new("shakirashakira", "My hips don't lie.")
     Tweet.new("everyone", "This class is ugly.")
    @tweets = Tweet.all
    erb :index
  end
 
end