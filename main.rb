require_relative 'player'

player1 = Player.new
player2 = Player.new
playerToggle = true
# When playerToggle is true it's player 1's turn. When false it's player 2's turn

puts "---WELCOME TO THE MATH GAME---"
puts "First one to 3 wins!"

while player1.score < 3 && player2.score <3

  puts "Player 1: #{player1.score} Player 2: #{player2.score}"

  if(playerToggle)
    puts "Player 1's turn"
  else
    puts "Player 2's turn"  
  end  

  number1 = rand(20)
  number2 = rand(20)
  answer = number1 +  number2

  puts "What is #{number1} + #{number2}?"
  guess = gets.chomp
  guess = guess.to_i

  if (guess == answer)
    puts "That's correct!"
    if playerToggle
      player1.score += 1
    else
      player2.score += 1
    end    
  else
    puts "That's wrong :("
  end    

  if (playerToggle)
    playerToggle = false
  else 
    playerToggle = true
  end

end  

puts "GAME OVER"
puts "Player 1: #{player1.score} Player 2: #{player2.score}"
if player1.score == 3
  puts "Player 1 WINS"
else
  puts "Player 2 WINS"
end    