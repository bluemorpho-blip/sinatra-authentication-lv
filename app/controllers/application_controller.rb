class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "auth_demo_lv"
  end

  helpers do

    def logged_in?
      !!session[:email]
  end

  def login(email)
    # Is the user who they claim to be?
    session[:eamil] = email
  end

  def logout!
    session.clear
  end
end

end
