require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      # binding.pry

      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      params[:team][:heros].each do |super_hero|
        Hero.new(super_hero)
      end

      @heros = Hero.all
      erb :team

      # redirect to "/teams/#{team.id}" 
    end

    get '/teams/:id' do
      @team = Team.find(params[:id])
      erb :team
    end
end

