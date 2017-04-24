#require 'big_bang2'
system("clear")
puts "Rock, Paper, Scissors, Lizard, Spock?"
 
def anim(string)
  string.each_char do |n|
  print n
  charWait = rand(0.03..0.07)
  sleep(charWait)
  end
end

user = gets.chomp.capitalize
cpuPlayer = ["Rock", "Paper", "Scissors", "Lizard", "Spock"].sample
cpuMessage = "Computer chose #{cpuPlayer}... "
	
case ([user, cpuPlayer])
	when ["Scissors", "Paper"] then anim(cpuMessage + "Scissors cuts Paper, you win!")
	when ["Paper", "Rock"] then anim(cpuMessage + "Paper covers Rock, you win!")
	when ["Rock", "Lizard"] then anim(cpuMessage + "Rock crushes Lizard, you win!")		
	when ["Lizard", "Spock"] then anim(cpuMessage + "Lizard poisons Spock, you win!")
	when ["Spock", "Scissors"] then anim(cpuMessage + "Spock smashes Scissors, you win!")
	when ["Scissors", "Lizard"]	then anim(cpuMessage + "Scissors decapitates Lizard, you win!")
	when ["Lizard", "Paper"]	then anim(cpuMessage + "Lizard eats Paper, you win!")
	when ["Paper", "Spock"]	then anim(cpuMessage + "Paper disproves Spock, you win!")
	when ["Spock", "Rock"]	then anim(cpuMessage + "Spock vaporizes Rock, you win!")
	when ["Rock", "Scissors"]	then anim(cpuMessage + "Rock crushes Scissors, you win!")
	when ["Rock", "Rock"], ["Paper", "Paper"], ["Scissors", "Scissors"], ["Lizard", "Lizard"], ["Spock", "Spock"] then anim(cpuMessage + "Tie game")
	else anim(cpuMessage + "You lost")
end
# sleep(2)
# puts
# puts "Play again? Y or N"
# user_choice = gets.chomp.downcase unless 'n' big_bang end