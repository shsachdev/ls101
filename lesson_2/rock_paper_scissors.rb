VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  Kernel.puts("=> #{message}")
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

  if (choice == "rock" && computer_choice == "scissors") ||
    (choice == "scissors" && computer_choice == "paper") ||
    (choice == "paper" && computer_choice == "rock")
    prompt("You won")
  elsif (choice == "scissors" && computer_choice == "rock") ||
    (choice == "paper" && computer_choice == "scissors") ||
    (choice == "rock" && computer_choice == "paper")
    prompt("You lost")
  else
    prompt("It's a tie!")
  end
  prompt("Do you want to play again? y or n")
  answer = Kernel.gets.chomp
  break unless answer.downcase().start_with?("y")
end

prompt("Thanks for playing. Goodbye!")
