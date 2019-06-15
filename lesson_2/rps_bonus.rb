VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "scissors" && second == "paper") ||
    (first == "paper" && second == "rock") ||
    (first == "lizard" && second == "spock") ||
    (first == "rock" && second == "lizard") ||
    (first == "lizard" && second == "paper") ||
    (first == "scissors" && second == "lizard") ||
    (first == "spock" && second == "scissors") ||
    (first == "paper" && second == "spock") ||
    (first == "spock" && second == "rock")
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won")
  elsif win?(computer, player)
    prompt("You lost")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = " "
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}. Feel free to just type the first letter (i.e r for rock etc..)")
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
