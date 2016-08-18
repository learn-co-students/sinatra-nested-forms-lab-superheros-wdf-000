require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/team' do
      # binding.pry
      @team = params["team"]
      @hero_1 = params["team"]["members"][0]
      @hero_2 = params["team"]["members"][1]
      @hero_3 = params["team"]["members"][2]
      erb :team
    end

end
