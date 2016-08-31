require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"../views/super_hero"
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:hero].each do |each_hero|
        new_hero = Hero.new(each_hero)
        end
        @all_hero = Hero.all




      erb :"../views/team"
    end


end
