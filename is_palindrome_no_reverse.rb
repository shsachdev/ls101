# Write a method to determine if a word is a palindrome without using reverse method.

def is_palindrome?(str)
  letters = str.chars
  reverse = []
  counter = str.size - 1
  loop do
    reverse << letters[counter]
    counter = counter - 1
    break if counter < 0
  end
  if letters.join == reverse.join
    true
  else
    false
  end
end

p is_palindrome?("Radar") == false
p is_palindrome?("zaz") == true
p is_palindrome?("redivider") == true
p is_palindrome?("") == true

# pseudocode

# input = string, output = boolean

# test-cases: case sensitive

# Algorithm

# 1. turn string into an array of its characters => call array letters.

# 2. initialize another array called reverse.

# 3. loop through letters:
  # at each iteration, working from last character in letters, add that char to reverse.
    # use a counter to do this.
  # break when counter == -1

# 4. compare letters.join with reverse.join
