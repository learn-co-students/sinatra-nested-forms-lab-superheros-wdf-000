require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:memebers].each do |memeber|
        Memeber.new(memeber)
      end
      erb :team
    end
end





#
#
# @memeber1 = Memeber.new(member1_name,member1_power,member1_bio)
# @memeber2 = Memeber.new(member2_name,member1_power,member2_bio)
# @memeber3 = Memeber.new(member3_name,member3_power, member3_bio)
