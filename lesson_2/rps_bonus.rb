VALID_CHOICES = %w(rock paper scissors lizard spock r p sc li sp)

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


i = 0
j = 0
loop do
  choice = " "
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}. Feel free to just type the first letter (i.e r for rock etc..)")
    prompt("If choosing scissors or spock, please enter first two letters of the word (sc or sp), so that we don't get confused!")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  if choice == "r"
    choice = "rock"
  elsif choice == "p"
    choice = "paper"
  elsif choice == "sc"
    choice = "scissors"
  elsif choice == "li"
    choice = "lizard"
  elsif choice == "sp"
    choice = "spock"
  end

  computer_choice = VALID_CHOICES.sample()

  if computer_choice == "r"
    computer_choice = "rock"
  elsif computer_choice == "p"
    computer_choice = "paper"
  elsif computer_choice == "sc"
    computer_choice = "scissors"
  elsif computer_choice == "li"
    computer_choice = "lizard"
  elsif computer_choice == "sp"
    computer_choice = "spock"
  end

  prompt("You chose #{choice}; computer chose #{computer_choice}")

  display_result(choice, computer_choice)


  if win?(choice, computer_choice)
    i = i + 1
  elsif win?(choice, computer_choice) == false || choice != computer_choice
    j = j + 1
  else
    nil
  end

  if i == 5
    prompt("You are the grand winner!")
    break
  elsif j == 5
    prompt("The computer is the grand winner!")
    break
  else
    nil
  end

  prompt("Do you want to play again? y or n")
  answer = Kernel.gets.chomp
  break unless answer.downcase().start_with?("y")
end

prompt("Thanks for playing. Goodbye!")
