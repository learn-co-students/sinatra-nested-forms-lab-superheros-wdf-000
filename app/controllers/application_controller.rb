require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = params[:team]
      erb :team
    end


end
