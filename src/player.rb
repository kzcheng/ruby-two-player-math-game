class Player
  @@number_of_players = 0
  attr_accessor :name, :remaining_life, :max_life

  def initialize(name, life)
    @@number_of_players += 1
    self.name = name
    self.max_life = life
    self.remaining_life = max_life
  end

  def self.total_number_of_players
    return @@number_of_players
  end
end
