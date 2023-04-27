puts "🌱 Seeding data..."

# Create teams
center_grove = Team.create(name: "Center Grove", city: "Greenwood", state: "IN")
avon = Team.create(name: "Avon", city: "Avon", state: "IN")
new_palestine = Team.create(name: "New Palestine", city: "Palestine", state: "IN")
columbus_north = Team.create(name: "Columbus North", city: "Columbus", state: "IN")

# Create games
Game.create(team: center_grove, opponent: "Whiteland", date: Date.new(2023, 03, 28), location: "Greenwood", team_score: 9, opponent_score: 2)
Game.create(team: center_grove, opponent: "Zionsville", date: Date.new(2023, 03, 29), location: "Zionsville", team_score: 14, opponent_score: 3)
Game.create(team: center_grove, opponent: "Pendleton Heights", date: Date.new(2023, 03, 31), location: "Pendleton", team_score: 15, opponent_score: 6)
Game.create(team: center_grove, opponent: "DCHS", date: Date.new(2023, 04, 8), location: "Pendleton", team_score: 10, opponent_score: 0)
Game.create(team: center_grove, opponent: "Chesterton", date: Date.new(2023, 04, 8), location: "Pendleton", team_score: 13, opponent_score: 0)

Game.create(team: avon, opponent: "Lake Central", date: Date.new(2023, 03, 28), location: "Avon", team_score: 7, opponent_score: 5)
Game.create(team: avon, opponent: "Noblesville", date: Date.new(2023, 03, 28), location: "Avon", team_score: 11, opponent_score: 10)
Game.create(team: avon, opponent: "Silver Creek", date: Date.new(2023, 04, 01), location: "Indianapolis", team_score: 8, opponent_score: 2)
Game.create(team: avon, opponent: "BNLHS", date: Date.new(2023, 04, 01), location: "Bedford", team_score: 12, opponent_score: 2)
Game.create(team: avon, opponent: "Ben Davis", date: Date.new(2023, 04, 04), location: "Avon", team_score: 6, opponent_score: 3)

Game.create(team: new_palestine, opponent: "EHHS", date: Date.new(2023, 03, 20), location: "Palestine", team_score: 5, opponent_score: 1)
Game.create(team: new_palestine, opponent: "Avon", date: Date.new(2023, 04, 06), location: "Palestine", team_score: 6, opponent_score: 3)
Game.create(team: new_palestine, opponent: "Plainfield", date: Date.new(2023, 04, 07), location: "Plainfield", team_score: 10, opponent_score: 0)
Game.create(team: new_palestine, opponent: "East Central", date: Date.new(2023, 03, 20), location: "Fishers", team_score: 7, opponent_score: 11)

Game.create(team: columbus_north, opponent: "Bloomington South", date: Date.new(2023, 3, 28), location: "Columbus", team_score: 5, opponent_score: 2)
Game.create(team: columbus_north, opponent: "Greenwood", date: Date.new(2023, 3, 30), location: "Greenwood", team_score: 8, opponent_score: 1)
Game.create(team: columbus_north, opponent: "East Central", date: Date.new(2023, 4, 2), location: "Columbus", team_score: 4, opponent_score: 3)
Game.create(team: columbus_north, opponent: "Whiteland", date: Date.new(2023, 4, 5), location: "Whiteland", team_score: 6, opponent_score: 7)
Game.create(team: columbus_north, opponent: "Floyd Central", date: Date.new(2023, 4, 8), location: "Floyd Central", team_score: 3, opponent_score: 5)

puts "✅ Done seeding!"