# # Tic Tac Toe Flowchart
#
# 1. Display the initial empty 3 x 3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system "clear"
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end

def who_goes_first # this method prompts user to decide who goes first (player or comp).
  prompt "Who should go first, player or the computer? (player or comp)"
  turn_answer = gets.chomp
  if turn_answer.downcase.start_with?("p")
    return "Player"
  else
    return "Computer"
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select{ |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, string1 = ",", string2 = "or")
  final_number = array.pop
  array.join("#{string1}") + " #{string2} #{final_number}"
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square (#{ joinor(empty_squares(brd)) }):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def immediate_threat(brd) # if immediate threat to comp, returns array in which there is threat.
  winning_lines = [[1,2,3], [4,5,6], [7,8,9]] + # rows
                  [[1,4,7], [2,5,8], [3,6,9]] + # columns
                  [[1,5,9], [3,5,7]] # diagonals
  winning_lines.select do |line|
    (brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[2]] == INITIAL_MARKER ) || (brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER && brd[line[0]] == INITIAL_MARKER) || (brd[line[0]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER && brd[line[1]] == INITIAL_MARKER)
  end
end

def immediate_opp(brd) # if immediate opportunity to comp, returns array in which there is opportunity.
  winning_lines = [[1,2,3], [4,5,6], [7,8,9]] + # rows
                  [[1,4,7], [2,5,8], [3,6,9]] + # columns
                  [[1,5,9], [3,5,7]] # diagonals
  winning_lines.select do |line|
    (brd[line[0]] == COMPUTER_MARKER && brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == INITIAL_MARKER ) || (brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == COMPUTER_MARKER && brd[line[0]] == INITIAL_MARKER) || (brd[line[0]] == COMPUTER_MARKER && brd[line[2]] == COMPUTER_MARKER && brd[line[1]] == INITIAL_MARKER)
  end
end

def computer_places_piece!(brd)
  if immediate_opp(brd) != []
    square_range = immediate_opp(brd)[0]
    square_range.each do |num|
      if brd[num] == INITIAL_MARKER
        brd[num] = COMPUTER_MARKER
      end
    end
  elsif immediate_threat(brd) != []
    square_range = immediate_threat(brd)[0]
    square_range.each do |num|
      if brd[num] == INITIAL_MARKER
        brd[num] = COMPUTER_MARKER
      end
    end
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end


def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9]] + # rows
                  [[1,4,7], [2,5,8], [3,6,9]] + # columns
                  [[1,5,9], [3,5,7]] # diagonals
  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER
      return "Player"
    elsif brd[line[0]] == COMPUTER_MARKER && brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == COMPUTER_MARKER
      return "Computer"
    end
  end
  nil
end

player_score = 0 # player starts out with zero points.
comp_score = 0 # computer starts out with zero points.

loop do

  board = initialize_board
  first_move = who_goes_first

  if first_move == "Player"
    loop do
      display_board(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  else
    loop do
      display_board(board)
      computer_places_piece!(board)
      puts "mamamia"
      break if someone_won?(board) || board_full?(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  end

  display_board(board)


  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == "Player"
      player_score += 1
    else
      comp_score += 1
    end
  else
    prompt "It's a tie!"
  end

  if player_score == 5
    prompt "You won!"
    break
  elsif comp_score == 5
    prompt "Computer won!"
    break
  end


  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing Tic Tac Toe. Goodbye!"
