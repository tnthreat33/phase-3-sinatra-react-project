class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/teams" do
    teams = Team.limit(5)
    teams.to_json(include: :games)
  end
  
  get "/games" do
    games = Game.all 
    games.to_json(include: :team)
  end

  #post "/games" do 
    #game = Game.create(
      #opponent: params[:opponent],
      #date: params[:date],
     # location: params[:location],
      #team_score: params[:team_score],
     # opponent_score: params[:opponent_score],
     # team_id: params[:team_id]
   # )
   # game.to_json
  #end
  

end
