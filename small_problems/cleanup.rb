NON_ALPHABET = ["+", "*", "&", "?", "!", "-", "'", "-" ]

def cleanup(string)
  array = string.split("")
  store = array.map do |char|

    if NON_ALPHABET.include?(char) && NON_ALPHABET.include?(array[array.find_index(char) - 1]) != true
      " "
    elsif NON_ALPHABET.include?(char) && NON_ALPHABET.include?(array[array.find_index(char) - 1]) == true
      1
    else
      char
    end
  end
  store.delete(1)
  store.join()
end

p cleanup("---what's my +*& line?")

# input = string, output = string
# turn string into array that is comprised of each character in the string. using the split method.
# iterate through the array. if the character is not a letter, replace it with a space.
  # but if multiple non-alphabet chars occur in a row, you should only have one space in the result.
  # if previous element is alpha-numeric, then
