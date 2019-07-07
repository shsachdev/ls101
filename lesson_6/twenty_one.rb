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



def initialize_deck
  deck = {hearts: [2,3,4,5,6,7,8,9,10,"jack", "queen", "king", "ace"],
        diamonds:[2,3,4,5,6,7,8,9,10,"jack", "queen", "king", "ace"],
        clubs: [2,3,4,5,6,7,8,9,10,"jack", "queen", "king", "ace"],
        spades: [2,3,4,5,6,7,8,9,10,"jack", "queen", "king", "ace"]}
end
