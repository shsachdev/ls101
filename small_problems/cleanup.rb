NON_ALPHABET = ["+", "*", "&", "?", "!", "-", "'", "-" ]

def cleanup(string)
  store = string.split("").map do |char|
    if NON_ALPHABET.include?(char) && 
      " "
    else
      char
    end
  end
  store.join()
end

p cleanup("---what's my +*& line?")

# input = string, output = string
# turn string into array that is comprised of each character in the string. using the split method.
# iterate through the array. if the character is not a letter, replace it with a space.
