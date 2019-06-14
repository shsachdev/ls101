VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  if (player == "rock" && computer == "scissors") ||
    (player == "scissors" && computer == "paper") ||
    (player == "paper" && computer == "rock")
    prompt("You won")
  elsif (player == "scissors" && computer == "rock") ||
    (player == "paper" && computer == "scissors") ||
    (player == "rock" && computer == "paper")
    prompt("You lost")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = " "
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(",")}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose #{choice}; computer chose #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again? y or n")
  answer = Kernel.gets.chomp
  break unless answer.downcase().start_with?("y")
end

prompt("Thanks for playing. Goodbye!")
