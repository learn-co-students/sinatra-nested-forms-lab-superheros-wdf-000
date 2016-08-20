require 'sinatra/base'
require_relative '../../config/environment'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :hero
    end



    post '/team' do
      @team = Team.new(params[:team])


      @team.heros.each do |hero_hash|
        Hero.new(hero_hash)
      end

      # params[:team][:heros].each do |hero_hash|
      #   Hero.new(hero_hash)
      # end

      @heros = Hero.all
            # binding.pry
      erb :team
    end




end
