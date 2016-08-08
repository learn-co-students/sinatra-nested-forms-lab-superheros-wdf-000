require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    get '/teams' do
      # handle data to show
      erb :super_hero.erb
    end

end
