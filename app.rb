require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secrets, "secret"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    @sessions = session
    item = params["item"]
  end
  
end