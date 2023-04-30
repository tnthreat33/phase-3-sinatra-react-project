class Team < ActiveRecord::Base
  has_many :games

  def record
    wins = 0
    losses = 0
    self.games.each do |game|
      if game.team_score > game.opponent_score
        wins += 1
      else
        losses += 1
      end
    end

    return { wins: wins, losses: losses }
  end
end
