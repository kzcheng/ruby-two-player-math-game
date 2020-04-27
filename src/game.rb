class Game
  def initialize(player_names, init_life)
    players = player_names.map { |name| Player.new(name, init_life) }

    puts "Game Start!"
    self.game_loop(players[0])
  end

  def game_loop(init_player)
    current_player = init_player

    while (true)
      question = Question.new()

      puts "#{current_player.name}: What does #{question.a} plus #{question.b} equal?"

      answer = gets.chomp.to_i
      if (question.answer == answer)
        puts "#{current_player.name}: YES! You are correct."
      else
        puts "#{current_player.name}: NO! The correct answer is #{question.answer}"
        current_player.hit
      end

      previous_player = current_player
      current_player = current_player.next
      previous_player.check_die

      if (Player.remaining_player_count > 1)
        puts Player.show_score_board
        puts "----- NEW TURN -----"
      else
        puts Player.show_last_player
        puts "----- GAME OVER -----"
        break
      end
    end
  end
end
