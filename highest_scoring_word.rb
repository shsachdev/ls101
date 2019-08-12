ALPHABET = ("a".."z").to_a

def score(string)
  sum = 0
  string.chars.each do |char|
    sum += ALPHABET.index(char) + 1
  end
  sum
end

def high(str)
  arr = str.split
  scores = arr.map do |word|
    score(word)
  end
  arr[scores.index(scores.max)]
end


p high("man i need a taxi up to ubud") == "taxi"

p high("what time are we climbing up the volcano") == "volcano"

# Given a string of words, you need to find the highest scoring word.
# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
# You need to return the highest scoring word as a string.

# pseudocode

# input = string, output = string
# case does not matter.
# non-destructive method.

# Algorithm

# 1. define scoring system by initializing array with alphabet.
# 2. turn string into array.
# 3. iterate through array using map method.
# 4. score each word.
  # define a method called score(str) => integer.
# 5 find highest scoring value, look at index, and then use this index to return string.
