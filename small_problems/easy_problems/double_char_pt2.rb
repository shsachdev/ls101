VOWELS = ["a", "e", "i", "o", "u"]

CONSONANTS = ("a".."z").to_a.reject {|letter| VOWELS.include?(letter.downcase)}

def double_consonants(string)
  doubled_array = string.chars.map do |char|
    if CONSONANTS.include?(char.downcase)
      char * 2
    else
      char
    end
  end
  doubled_array.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
