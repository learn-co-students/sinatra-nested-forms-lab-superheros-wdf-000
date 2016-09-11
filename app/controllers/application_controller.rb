require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do

    @t_name = params[:team][:name]
    @t_motto = params[:team][:motto]
    @hero_n = []
    @hero_p = []
    @hero_b = []

    @t_members = params[:team][:members]
    @t_members.each do |member|
      @hero_n << member[:name]
      @hero_p << member[:power]
      @hero_b << member[:bio]
    end
    erb :team
  end
end
