module MathGame
  class Question

    def initialize(player)
      @player = player
      @random_numbers = [random_number, random_number]
      @answer = @random_numbers[0] + @random_numbers[1]
    end

    def random_number
      rand(1...10)
    end

    def math_question(playerName)
      puts "#{playerName}: What is #{@random_numbers[0]} plus #{@random_numbers[1]}?"
      guess = gets.chomp.to_i
      is_correct_answer(guess)
    end

    def is_correct_answer(guess)
      if @answer == guess
        puts "YES! you got it right!"
        true
      else
        puts "Oops, sorry! Wrong answer."
        false
      end
    end

  end
end