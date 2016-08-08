require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/team' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    # binding.pry
    @hero_1_name = params[:team][:hero][0][:name]
    # binding.pry
    @hero_1_power = params[:team][:hero][0][:power]
    # binding.pry
    @hero_1_bio = params[:team][:hero][0][:bio]
    @hero_2_name = params[:team][:hero][1][:name]
    @hero_2_power = params[:team][:hero][1][:power]
    @hero_2_bio = params[:team][:hero][1][:bio]
    @hero_3_name = params[:team][:hero][2][:name]
    @hero_3_power = params[:team][:hero][2][:power]
    @hero_3_bio = params[:team][:hero][2][:bio]
    # binding.pry
    erb :team
  end

end
