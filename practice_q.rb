
VOWELS = ["a", "e", "i", "o", "u"]

def remove_vowels(array_of_strings)
  array_of_strings.each do |string|
    string.chars.each do |char|
      if VOWELS.include?(char)
        string.delete(char)
      end
    end
  end
  array_of_strings
end


p remove_vowels(["green", "yellow", "black", "white"])


# input = array (of strings), output = array (of strings)

# iterate over each element in array_of_strings
  # array_of_strings.each do |string|
# then iterate over each character in each string:
  # string.chars.each do |char|
#
