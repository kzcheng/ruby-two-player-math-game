class Player
  @@list = []
  attr_accessor :name, :remaining_life, :max_life

  def initialize(name, life)
    self.name = name
    self.max_life = life
    self.remaining_life = max_life
    @@list.push(self)
  end

  def self.list
    return @@list
  end

  def self.remaining_player_count
    return @@list.length
  end

  def self.show_last_player
    last = @@list[0]
    return "#{last.name} wins the game with a score of #{last.remaining_life}/#{last.max_life}"
  end

  def self.show_score_board
    rs = "| "
    @@list.each do |player|
      rs += "#{player.name}: #{player.remaining_life}/#{player.max_life} | "
    end
    return rs.strip
  end

  def kill
    @@list.delete(self)
  end

  def hit
    self.remaining_life -= 1
  end

  # Returns the next player object
  def next
    index = @@list.index(self)
    if (!index)
      raise "ERROR: Can't find given player"
    end

    return index + 1 < @@list.length ? @@list[index + 1] : @@list[0]
  end
end
