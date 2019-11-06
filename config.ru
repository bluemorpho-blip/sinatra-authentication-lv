require './config/environment'

use Rack::Session::Cookie
use SessionsController
run ApplicationController
