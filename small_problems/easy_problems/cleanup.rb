# NON_ALPHABET = ["+", "*", "&", "?", "!", "-", "'", "-", " " ]
#
#
# def cleanup(string)
#   array = string.split("")
#   store = array.map do |char|
#
#     if NON_ALPHABET.include?(char) && NON_ALPHABET.include?(array[array.find_index(char) - 1]) != true
#       " "
#     elsif NON_ALPHABET.include?(char) && NON_ALPHABET.include?(array[array.find_index(char) - 1]) == true
#       1
#     else
#       char
#     end
#   end
#   p store
#   store.delete(1)
#   p store
#   store.join()
# end
#
# p cleanup("---what's my +*& line?")

# input = string, output = string
# turn string into array that is comprised of each character in the string. using the split method.
# iterate through the array. if the character is not a letter, replace it with a space.
  # but if multiple non-alphabet chars occur in a row, you should only have one space in the result.
  # if previous element is alpha-numeric, then add a place-holder which I will delete later.

# maybe also define a spaces method that if two consecutive elements are spaces, then get rid of the first one.

ALPHABET = ("a" .. "z").to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << " " unless clean_chars.last == " "
    end
  end
  clean_chars.join("")
end

p cleanup("---what's my +*& line?")
