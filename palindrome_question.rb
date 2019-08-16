def is_palindrome?(str)
  arr_of_letters = str.chars
  reverse = []
  loop do
    break if arr_of_letters == []
    reverse << arr_of_letters.pop
  end
  if reverse.join == str
    true
  else
    false
  end
end





# returns true if str is palindrome. false otherwise.
# case sensitive (Radar != radar)
# can't use reverse method.

p is_palindrome?("Radar") == false
p is_palindrome?("zaz") == true
p is_palindrome?("-!!!!!ff!!!!!-") == true

# pseudocode

# input = string, output = boolean
# test-cases: case sensitive

# Algorithm

# 1. turn str into array of its characters, call it array_of_letters.

# 2. initiliaze an empty array, call it reverse.

# 3. loop through array_of_letters, invoke pop and store return value in reverse. break when array == []

# 4. invoke join on reverse, compare to string. if same, return true, else return false.
