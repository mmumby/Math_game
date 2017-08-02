module MathGame
  class Game
    def initialize
      @game_status = "Play"
      @player_1 = MathGame::Player.new("Player 1", 3)
      @player_2 = MathGame::Player.new("Player 2", 3)
      @players = [@player_1, @player_2]
      @question = MathGame::Question.new(@player_1)
      @current_player = @players.first
      puts "Welcome! Let's see how good you are at Math!"
      is_game_over?
    end

    def new_turn
      puts "----- New Turn -----"
      @current_player = @player_1 ? @player_2 : @player_1

      unless @question.math_question(@current_player.name)
        deduct_life(@current_player)
      end
      puts "P1: #{@player_1.life}/3 vs P2: #{@player_2.life}/3"
    end

    def deduct_life(player)
      player.life -= 1
    end

    def is_game_over?
    while @game_status
      if @player_1.life > 0 && @player_2.life > 0
        new_turn
      elsif @player_1.life == 0 && @player_2.life == 0
        @game_status = "Game Over"
        puts "---- GAME OVER ----"
        exit
      else
        winner = @players.max_by(&:life)
        @game_status = "Game Over"
        puts "#{winner.name} Has won!"
        puts "---- GAVE OVER -----"
        exit
      end

    end
  end

  end
end