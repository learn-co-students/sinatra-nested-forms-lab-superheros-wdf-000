require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :super_hero
  end
  post '/superhero' do
    @team = Team.new(params[:team][:name], params[:team][:motto])
    @heroes = []
    params[:team][:hero].each {|hero| @heroes << Superhero.new(hero[:name], hero[:power], hero[:biography])}
    erb :team
  end
end
