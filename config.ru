require './config/environment'

# use Rack::Session::Cookie
use SessionsController
use PostsController
use UsersController
run ApplicationController
