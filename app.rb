require 'debugger'

class Games < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :form
  end

  post '/games' do
    @game = params[:game]
    erb :view
  end

end

