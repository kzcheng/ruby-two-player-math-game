# Launch the project by running this main file

require "pry"
require "./game.rb"
require "./player.rb"
require "./question.rb"

# pp Player.total_number_of_players

Akira = Player.new("Akira", 8)
Player.new("Bad guys", 8)
Player.new("Bad guys", 8)
Player.new("Bad guys", 8)
Player.new("Bad guys", 8)

pp Player.list

pp Player.kill(Akira)
pp Player.list

# pp Question.new

#
#
# Main Game Below
# game
