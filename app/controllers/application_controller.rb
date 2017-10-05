require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 

    	erb :super_hero
    	
    end

    post '/teams' do 
    	@squad = params[:team]
    	erb :team
    end

end
