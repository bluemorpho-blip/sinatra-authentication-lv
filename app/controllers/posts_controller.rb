class PostsController < ApplicationController

  get '/posts' do
    # "you are logged in as #{session[:email]}"
    "A list of publically available posts"
  end

  get '/posts/new' do
    # Checking if user is logged in
    if !logged_in?
      redirect '/login' # redirecting if not logged in
    else
      "A new post form" # rendering if user IS logged in
    end
  end

  get '/posts/:id/edit' do
    # Checking if user is logged in
    if !logged_in?
      redirect '/login' # redirecting if not logged in
    else
      "A edit post form" # rendering if user IS logged in
    end
  end

end
