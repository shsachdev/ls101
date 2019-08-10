SCORE = ("a".."z").to_a
VOWELS = ["a", "e", "i", "o", "u"]

def score(string)
  sum = 0
  string.each_char do |char|
    sum += SCORE.index(char) + 1
  end
  sum
end

def solve(str)
  consonant_substrings = []
  string_holder = ""
  scores = []
  str.each_char do |char|
    string_holder << char if VOWELS.include?(char) != true
    if VOWELS.include?(char)
      consonant_substrings << string_holder if string_holder != ""
      string_holder = ""
    end
  end
  consonant_substrings << string_holder
  consonant_substrings.each do |string|
    scores << score(string)
  end
  scores.max
end


p solve("zodiacs") == 26
p solve("strength") == 57
p solve("khrushchev") == 38
p solve("twelfthstreet") == 103
p solve("mischtschenkoana") == 80


# Given a lowercase string that has alphabetic characters only and no spaces,
# return the highest value of consonant substrings.

# pseudocode

# input = string, output = integer

# Algorithm

# 1. initialize score of values. initialize array of vowels.
# 2. calculate all possible substrings of consonants.
  # iterate through str, and keep adding char to a string until you reach a vowel.
  # add this array to consonant_substrings. then start after vowel. keep doing until you've iterated through string.
# 3. score each substring.
# 4. return highest score.
