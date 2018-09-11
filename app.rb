require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/team" do #posting to team
    binding.pry
    @team = params
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]
    erb :team #using these names to populate view
  end

end
