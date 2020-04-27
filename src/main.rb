# Launch the project by running this main file

require "pry"
require "./game.rb"
require "./player.rb"
require "./question.rb"

def test
  # pp Player.total_number_of_players

  p1 = Player.new("p1", 1)
  p2 = Player.new("p2", 1)
  p3 = Player.new("p3", 1)
  p4 = Player.new("p4", 1)
  p5 = Player.new("p5", 1)

  pp Player.list

  pp p1.next

  # pp Question.new
end

# test
game
