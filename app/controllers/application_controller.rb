# require_relative './config/environment'

# Manages non-model-based routing, helpers, sessions
class ApplicationController < Sinatra::Base
  configure do 
      set :views, 'app/views'
      enable :sessions
      set :session_secret, "password_security"
  end
  get '/' do 
      erb :index
  end 
  get '/failure' do
      erb :failure 
  end 
  get '/signup' do 
      erb :signup 
  end 
  post '/signup' do
      @user = User.new(username: params[:username], password: params[:password])
      @user.save

      if params[:username] == "" || params[:password] == ""
      redirect '/failure'
    else
       redirect '/login'
    end
  end 
  get '/new' do 
      erb :new 
  end
  get '/profile' do
     # @author = user.find(session[:author_id])
      erb :profile
  end
  get '/login' do 
      erb :login 
  end 
  post '/login' do 
      @user = User.find_by(username: params[:username])

      if @user && @user.authenticate(params[:password])
      session[:user] = @user.id
      redirect '/profile'
      else 
      redirect '/failure'
    end
  end 
  get '/signout' do 
      session.clear 
      redirect '/'
  end

helpers do
  def logged_in?
    !!session[:user]
  end
  def redirect_if_not_logged_in
      unless logged_in?
        redirect '/login'
      end
    end

  def current_author
    User.find(session[:user])
  end
end
  
end 
