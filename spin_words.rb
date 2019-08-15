def spin_words(str)
  array_of_words = str.split(" ")
  reversed = array_of_words.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end
  reversed.join(" ")
end

# Write a function that takes in a string of one or more words,
# and returns the same string, but with all five or more letter words
# reversed. Strings passed in will
# consist of only letters and spaces. Spaces will be included only
# when more than one word is present.

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test"
p spin_words("This is another test") == "This is rehtona test"

# pseudocode

# input = string, output = string

# Algorithm

# 1. turn input string into an array of words.

# 2. check each word for size.
  # if size >= 5, reverse the word.

# 3. join the returned words, and return the string.
