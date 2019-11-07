require './config/environment'
require './app/controllers/application_controller'

begin

  use Rack::MethodOverride

  use SessionsController
  use PostsController
  use UsersController
  run ApplicationController

# use Rack::Session::Cookie
rescue ActiveRecord::PendingMigrationError => err
  STDERR.puts err
  exit 1
end
