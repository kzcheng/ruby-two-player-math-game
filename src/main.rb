# Launch the project by running this main file

require "pry"
require "./player.rb"

pp Player.total_number_of_players

Akira = Player.new("Akira", 8)

Akira.name = "Akira NEW"

pp Akira

# Main Game Below
puts
puts "Game Start!"

while (true)
end
