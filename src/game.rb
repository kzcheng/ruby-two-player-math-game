def game
  puts
  puts "Game Start!"
  player1 = Player.new("Player 1", 3)
  # player2 = Player.new("Player 2", 3)
  current_player = player1

  while (true)
    question = Question.new()
    answer = question.answer
    puts "#{current_player.name}: What does #{question.a} plus #{question.b} equal?"
    puts "It's FUCKING #{answer}"

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
