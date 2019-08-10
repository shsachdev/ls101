ALPHABET = ("a".."z").to_a

def alphabet_position(str)
  arr = str.chars
  store = arr.map do |letter|
    if ALPHABET.include?(letter.downcase)
      ALPHABET.index(letter.downcase) + 1
    else
      0
    end
  end
  cleaned = store.select {|num| num if num != 0}
  cleaned.join(" ")
end


p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.

# pseudocode

# input = string, output = string

# Algorithm

# 1. turn string into array of its characters.
# 2. invoke map method on each element in the array.
  # if the character is not
