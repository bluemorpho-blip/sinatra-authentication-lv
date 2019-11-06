class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login"
  end

  post '/sessions' do
    # raise params.inspect - used to check output w/ w/o email entry
    # raise params[:email].inspect
    session[:email] = params[:email]
    # raise session[:email].inspect
    redirect '/posts'
  end

    get '/logout' do
      session.clear
      redirect '/login'
    end

end
