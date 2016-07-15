require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      params[:team][:member].each do |hash|
        this_member = Member.new
        hash.each{|key, value| this_member.send("#{key.to_sym}=", value)}
      end
      @members = Member.all
      erb :team
    end


end
