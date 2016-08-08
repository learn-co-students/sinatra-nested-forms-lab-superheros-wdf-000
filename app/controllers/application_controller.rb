require 'sinatra/base'
require './config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      # creates new team
      @team = Team.new(params[:team])
      # creates each hero
      params[:team][:members].each do |details|
        Hero.new(details)
      end
      # return all heroes
      @heroes = Hero.all

      erb :super_hero.erb
    end

end
