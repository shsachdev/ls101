VOWELS = ["a", "e", "i", "o", "u"]

def get_count(str)
  char_vowels = []
  str.chars.each do |char|
    if VOWELS.include?(char)
      char_vowels << char
    end
  end
  char_vowels.size
end


p get_count("abracadabra") == 5

# return the number of vowels in a string

# turn str into an array of characters.
