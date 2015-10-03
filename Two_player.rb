@current_player = 'A'

@live_A = 3
@live_B = 3

#generate the question for the players
def generate_question
  num1 = rand(20)
  num2 = rand(20)
  puts "Player #{@current_player}: What does #{num1} plus #{num2} equal?"
  answer = gets.chomp
  verify_answer(num1, num2, answer.to_i)
end

def verify_answer(num1, num2, answer)
  if num1 + num2 == answer
    puts "Right answer"
  else
    puts "wrong answer the answer was #{num1+num2}" 
    if @current_player == "A"
      @live_A -= 1
      puts "lives #{@live_A} player A"
    else
      @live_B -= 1
      puts "lives #{@live_B} player B"
    end
  end
end

def who_wins
  puts "Player B wins!!!!" if @live_A == 0
  puts "Player A wins!!!!" if @live_B == 0
end

def switch_players
  @current_player = case @current_player
    when 'A' then 'B'
    when 'B' then 'A'
  end
end

begin
  generate_question
  switch_players
end while @live_A != 0 && @live_B != 0

who_wins
puts "GAME  OVER"

#loop until input equals "done"
#  get input about next exam result
#  if the student passed
#    add one to passes
#  else
#    add one to failures
#  add one to student counter

#print the number of passes
#print the number of failures

#if eight or more students passed
#  print "party time!"