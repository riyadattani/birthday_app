require 'sinatra/base'
require 'shotgun'

class Birthday < Sinatra::Base
  enable :sessions
  configure(:development) { set :session_secret, "something" }

  get '/' do
    erb :index
  end

  post '/info' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/greeting'
  end

  get '/greeting' do
    @name = session[:name]
    erb :greeting
  end

end
