def game
  puts
  puts "Game Start!"
  player1 = Player.new("Player 1", 3)
  player2 = Player.new("Player 2", 3)
  current_player = player1

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

    if (current_player.remaining_life <= 0)
      puts "#{current_player.name} is eliminated!"
      current_player.kill
    end

    if (Player.remaining_player_count > 1)
      puts Player.show_score_board
      puts "----- NEW TURN -----"
      current_player = current_player.next
    else
      puts Player.show_last_player
      puts "----- GAME OVER -----"
      break
    end
  end
end
