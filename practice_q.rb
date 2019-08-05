
VOWELS = ["a", "e", "i", "o", "u"]

def remove_vowels(array_of_strings)
  array_of_strings.map do |string|
    chars = string.chars
    VOWELS.each {|vowel| chars.delete(vowel)}
    chars.join
  end
end


p remove_vowels(["green", "yellow", "black", "white"])


# input = array (of strings), output = array (of strings)

# iterate over each element in array_of_strings
  # array_of_strings.each do |string|
# then iterate over each character in each string:
  # string.chars.each do |char|
#
