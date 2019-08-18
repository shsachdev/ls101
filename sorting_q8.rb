hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = ["a", "e", "i", "o", "u"]

def print_vowels(string)
  string.each_char do |char|
    if VOWELS.include?(char)
      puts char
    end
  end
end

hsh.each do |key, value|
  value.each do |str|
    print_vowels(str)
  end
end
