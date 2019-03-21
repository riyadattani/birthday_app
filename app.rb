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
    @day = session[:day]
    @month = session[:month]
    @now = Time.new
    @date_input = Time.new(2019,@month,@day)
    #countdown in days
    p @date_input
    @countdown = (@date_input - @now)/(60*60*24)
    # if @coundown < 0
    #   @countdown += 365
    # end
    p @coundown
    erb :greeting
  end

end
