# my code for the twenty_one assignment.

# higher level pseudo-code:

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins. # need to implement this tomorrow
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

def prompt(msg)
  puts "=> #{msg}"
end

def hand_calculator(hand)
  calc_hand = hand.map do |array|
    if array[1].to_i != 0
      array[1].to_i
    elsif array[1] == "Queen" || array[1] == "Jack" || array[1] == "King"
      array[1] = 10
    else
      array[1]
    end
  end
  if calc_hand.include?("Ace")
    sum = 0
    sum_without_ace = 0
    calc_hand_sans_ace = calc_hand.reject {|i| i == "Ace"}
    calc_hand_sans_ace.each {|a| sum_without_ace += a}
    if sum_without_ace <= 10
      latest = calc_hand.map do |item|
        if item == "Ace"
          item = 11
        else
          item
        end
      end
      latest.each {|a| sum += a}
    else
      latest = calc_hand.map do |item|
        if item == "Ace"
          item = 1
        else
          item
        end
      end
      latest.each {|a| sum += a}
    end
  else
    sum = 0
    calc_hand.each {|a| sum += a}
  end
  sum
end

def hit(crds, hand)
  card = crds.delete(crds.sample)
  hand << card
end

def compare_cards(hand_1, hand_2)
  hand_translator_player(hand_1)
  final_translator_dealer(hand_2)
  if hand_calculator(hand_1) > hand_calculator(hand_2)
    prompt "You win!"
  elsif hand_calculator(hand_1) < hand_calculator(hand_2)
    prompt "You lose!"
  else
    prompt "It's a tie!"
  end
end

def final_translator_dealer(hand) # translates dealer hand once you no longer need to conceal the second card.
  converted_hand = hand.map do |array|
    array[1]
  end
  prompt "Dealer has: #{converted_hand.join(" and ")}"
end

def hand_translator_player(hand)
  converted_hand = hand.map do |array|
    array[1]
  end
  prompt "You have: #{converted_hand.join(" and ")}"
end

def hand_translator_dealer(hand)
  converted_hand = hand.map do |array|
    array[1]
  end
  prompt "Dealer has: #{converted_hand[0]} and Unknown Card."
end

def initialize_deck #H2 == 2 of Hearts, HQ == Queen of Hearts
  deck = [["H", "2"], ["H", "3"], ["H", "4"], ["H", "5"], ["H", "6"],["H", "7"], ["H", "8"], ["H", "9"], ["H", "10"],
          ["H", "Jack"], ["H", "Queen"], ["H", "King"], ["H", "Ace"], ["D", "2"], ["D", "3"], ["D", "4"], ["D", "5"], ["D", "6"],
          ["D", "7"], ["D", "8"], ["D", "9"], ["D", "10"],["D", "Jack"], ["D", "Queen"], ["D", "King"], ["D", "Ace"], ["C", "2"],
          ["C", "3"], ["C", "4"], ["C", "5"], ["C", "6"],["C", "7"], ["C", "8"], ["C", "9"], ["C", "10"],["C", "Jack"],
          ["C", "Queen"], ["C", "King"], ["C", "Ace"], ["S", "2"], ["S", "3"], ["S", "4"], ["S", "5"], ["S", "6"],["S", "7"],
          ["S", "8"], ["S", "9"], ["S", "10"],["S", "Jack"], ["S", "Queen"], ["S", "King"], ["S", "Ace"]]
  deck
end

def initialize_player_cards(crds)
  player_cards = []
  card_1 = crds.delete(crds.sample)
  card_2 = crds.delete(crds.sample)
  player_cards << card_1
  player_cards << card_2
  player_cards
end

def initialize_dealer_cards(crds)
  dealer_cards = []
  card_1_dealer = crds.delete(crds.sample)
  card_2_dealer = crds.delete(crds.sample)
  dealer_cards << card_1_dealer
  dealer_cards << card_2_dealer
  dealer_cards
end

loop do


  new_deck = initialize_deck # fresh new deck of cards.
  player_hand = initialize_player_cards(new_deck) # first 2 cards for players. mutates the new_deck.
  dealer_hand = initialize_dealer_cards(new_deck) # first 2 cards for dealer. mutates the new_deck.


  hand_translator_dealer(dealer_hand) # ex - Dealer has: Ace and unknown
  hand_translator_player(player_hand) # ex - You have: 2 and 8


  loop do
    prompt "Do you want to hit or stay?"
    answer = gets.chomp
    break if answer.downcase.start_with?("s")
    hit(new_deck, player_hand)
    hand_translator_player(player_hand)
    if hand_calculator(player_hand) > 21 # should probably created a busted? method here instead of checking using hand_calculator mehtod
      prompt "Bust!"
      break
    end
  end

  if hand_calculator(player_hand) > 21
    break # here, it just exits loop -- I want it to ask player if he / she wants to play again. this needs to be fixed. 
  else
    prompt "You chose to stay!"
  end

  # need to implement dealer turn now.
  # Dealer turn: when the player stays, it's the dealer's turn.
  # The dealer must follow a strict rule for determining whether to hit or stay: hit until the total is at least 17.
  # If the dealer busts, then the player wins.

  loop do
    if hand_calculator(dealer_hand) < 17
      hit(new_deck, dealer_hand)
      next
    elsif hand_calculator(dealer_hand) > 21
      prompt "Dealer busted - you won!"
      break
    else
      compare_cards(player_hand, dealer_hand)
      break
    end
  end

  prompt "Thanks for playing! Would you like to play again?"
  final_answer = gets.chomp
  break unless final_answer.downcase.start_with?("y")
end
