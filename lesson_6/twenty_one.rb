# my code for the twenty_one assignment.

# higher level pseudo-code:

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

def prompt(msg)
  puts "=> #{msg}"
end

def hand_translator_player(hand)
  converted_hand = hand.map do |array|
    array[1]
  end
  prompt "You have: #{converted_hand.join(" and ")}"
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



new_deck = initialize_deck # fresh new deck of cards.
player_hand = initialize_player_cards(new_deck) # first 2 cards for players. mutates the new_deck.
dealer_hand = initialize_dealer_cards(new_deck) # first 2 cards for dealer. mutates the new_deck.



# hand_translator(dealer_hand) # ex - Dealer has: Ace and unknown
hand_translator_player(player_hand) # ex - You have: 2 and 8

# at this stage, the deck has 48 cards (can be verified by "puts new_deck.size")
