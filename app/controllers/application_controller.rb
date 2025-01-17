class ApplicationController < Sinatra::Base 
  set :default_content_type, 'application/json' 
  
 
  get "/teams" do
    teams = Team.all
    teams.to_json(include: :games)
  end
  
  
  delete '/games/:id' do
    game = Game.find(params[:id]) 
    game.destroy
    { message: "Game with id #{params[:id]} deleted" }.to_json
  end
  
  
  delete '/teams/:id' do
    team = Team.find(params[:id])
    team.destroy
    { message: "Team with id #{params[:id]} deleted" }.to_json
  end

  
  patch '/games/:id' do
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

  
  post '/teams' do
    team = Team.create(
      name: params[:name],
      city: params[:city],
      state: params[:state],
    )
    team.to_json
  end

end
