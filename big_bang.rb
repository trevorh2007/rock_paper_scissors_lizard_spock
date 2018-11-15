@user_win = 0
@cpu_win = 0
@tie = 0
@game_count = 0

def game
	system("clear")
	puts "Rock, Paper, Scissors, Lizard, Spock?"
	user = gets.chomp.capitalize
	cpuPlayer = ["Rock", "Paper", "Scissors", "Lizard", "Spock"].sample
	cpuMessage = "Computer chose #{cpuPlayer}... "
	validUserChoices = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]

	if !validUserChoices.include? user
		anim("Hey, no cheating... ")
		sleep(0.5)
		anim("Pick a valid option...")
		sleep(1)
		game
	end
	
	case ([user, cpuPlayer])
		when ["Scissors", "Paper"] then anim(cpuMessage + "Scissors cuts Paper, you win!"); @user_win += 1
		when ["Paper", "Rock"] then anim(cpuMessage + "Paper covers Rock, you win!");	@user_win += 1
		when ["Rock", "Lizard"] then anim(cpuMessage + "Rock crushes Lizard, you win!");	@user_win += 1
		when ["Lizard", "Spock"] then anim(cpuMessage + "Lizard poisons Spock, you win!");	@user_win += 1
		when ["Spock", "Scissors"] then anim(cpuMessage + "Spock smashes Scissors, you win!");	@user_win += 1
		when ["Scissors", "Lizard"] then anim(cpuMessage + "Scissors decapitates Lizard, you win!");	@user_win += 1
		when ["Lizard", "Paper"] then anim(cpuMessage + "Lizard eats Paper, you win!");	@user_win += 1
		when ["Paper", "Spock"] then anim(cpuMessage + "Paper disproves Spock, you win!");	@user_win += 1
		when ["Spock", "Rock"] then anim(cpuMessage + "Spock vaporizes Rock, you win!");	@user_win += 1
		when ["Rock", "Scissors"] then anim(cpuMessage + "Rock crushes Scissors, you win!");	@user_win += 1
		when ["Paper", "Scissors"] then anim(cpuMessage + "Scissors cuts your Paper, you lose"); @cpu_win += 1
		when ["Rock", "Paper"] then anim(cpuMessage + "Paper covers your Rock, you lose");	@cpu_win += 1
		when ["Lizard", "Rock"] then anim(cpuMessage + "Rock crushes your Lizard, you lose");	@cpu_win += 1
		when ["Spock", "Lizard"] then anim(cpuMessage + "Lizard poisons your Spock, you lose");	@cpu_win += 1
		when ["Scissors", "Spock"] then anim(cpuMessage + "Spock smashes your Scissors, you lose");	@cpu_win += 1
		when ["Lizard", "Scissors"] then anim(cpuMessage + "Scissors decapitates your Lizard, you lose");	@cpu_win += 1
		when ["Paper", "Lizard"] then anim(cpuMessage + "Lizard eats your Paper, you lose");	@cpu_win += 1
		when ["Spock", "Paper"] then anim(cpuMessage + "Paper disproves your Spock, you lose");	@cpu_win += 1
		when ["Rock", "Spock"] then anim(cpuMessage + "Spock vaporizes your Rock, you lose");	@cpu_win += 1
		when ["Scissors", "Rock"] then anim(cpuMessage + "Rock crushes your Scissors, you lose");	@cpu_win += 1
		when ["Rock", "Rock"], ["Paper", "Paper"], ["Scissors", "Scissors"], ["Lizard", "Lizard"], ["Spock", "Spock"] then anim(cpuMessage + "Tie game"); @tie += 1
		else anim("Unexpected Error!!! I don't know what to do with my hands..."); sleep(1); game
	end
	@game_count += 1
	play_again
end

def anim(string)
  string.each_char do |n|
  print n
  charWait = rand(0.03..0.07)
  sleep(charWait)
  end
end

def play_again
	sleep(1.5)
	puts "\n"
	puts "You've played #{@game_count} games"
	puts "#{@user_win} wins, #{@cpu_win} losses, #{@tie} ties."
	puts
	puts "Play again?"
	user_choice = gets.chomp.downcase
	game if user_choice != 'n' || user_choice != 'N'
end

game