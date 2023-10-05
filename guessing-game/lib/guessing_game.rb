class GuessingGame
  attr_reader :secret_num, :num_attempts, :game_over
  def initialize(min, max)
    @secret_num = (rand(1..10)) 
    @num_attempts = 0
    @game_over = false
  end

  
def num_attempts
    @num_attempts 
  end

  def game_over?
    @game_over 
  end

  def check_num(num)
    @num_attempts += 1
    if num == @secret_num
         print "you win"
         @game_over = true
    elsif num > @secret_num
      print "too big"
    elsif num < @secret_num
      print "too small"
    end
  end

  def ask_user
    print "enter a number"
    number = gets.chomp.to_i
    check_num(number)
  end
end