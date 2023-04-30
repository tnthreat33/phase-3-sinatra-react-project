class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/teams" do
    teams = Team.all
    teams.to_json(include: :games, methods: :record)
  end
  
  delete '/games/:id' do
    game = Game.find(params[:id])
    game.destroy
    { message: "Game with id #{params[:id]} deleted" }.to_json
  end

  put '/games/:id' do
    game = Game.find(params[:id])
    game.update(
      opponent: params[:opponent],
      date: params[:date],
      location: params[:location],
      team_score: params[:team_score],
      opponent_score: params[:opponent_score],
      team_id: params[:team_id]
    )
    
    game.to_json
  end
  
  post '/games' do
    game = Game.create(
      opponent: params[:opponent],
      date: params[:date],
      location: params[:location],
      team_score: params[:team_score],
      opponent_score: params[:opponent_score],
      team_id: params[:team_id]
    )
    game.to_json
  end
  

end
