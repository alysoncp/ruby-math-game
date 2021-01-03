number1 = rand(20)
number2 = rand(20)
answer = number1 +  number2

puts "What is #{number1} + #{number2}?"
guess = gets.chomp

if (guess = answer)
  puts "That's correct!"
else
  puts "That's wrong :("
end    