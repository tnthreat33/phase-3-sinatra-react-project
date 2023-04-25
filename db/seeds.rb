puts "🌱 Seeding data..."

# Create teams
team_names = ["Lions", "Tigers", "Bears", "Cougars", "Panthers"]
cities = ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix"]
states = ["NY", "CA", "IL", "TX", "AZ"]
teams = []

team_names.each_with_index do |name, index|
  team = Team.create(name: name, city: cities[index], state: states[index])
  teams << team
end

# Create games
opponent_names = ["Titans", "Bulldogs", "Eagles", "Warriors", "Trojans"]
locations = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX", "Phoenix, AZ"]

teams.each do |team|
  opponent_names.shuffle.each_with_index do |opponent_name, index|
    if team.name != opponent_name
      opponent_score = rand(50..150)
      team_score = rand(50..150)
      location = locations[index % locations.length]
      date = Time.now + (index * 7).days
      
      Game.create(team: team, opponent: opponent_name, date: date, location: location,
                  team_score: team_score, opponent_score: opponent_score)
    end
  end
end
puts "✅ Done seeding!"
