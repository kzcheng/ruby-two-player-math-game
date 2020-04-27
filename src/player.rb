class Player
  @@list = []
  attr_accessor :name, :remaining_life, :max_life

  def initialize(name, life)
    self.name = name
    self.max_life = life
    self.remaining_life = max_life
    @@list.push(self)
  end

  def self.total_number_of_players
    return @@list.length
  end

  def self.list
    return @@list
  end

  def self.kill(player)
    @@list.delete(player)
  end
end
