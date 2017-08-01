module MathGame

class Question
  def random_number
    rand(1...100)
  end

  def math_question
    question_number = [random_number, random_number]
    answer = question_number[0] + question_number[1]
    puts "What is #{question_number[0]} plus #{question_number[1]}?"
  end
end
end