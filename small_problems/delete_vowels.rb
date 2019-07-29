
VOWELS = ["a", "e", "i", "o", "u"]

def remove_vowels(array)
  non_vowel = []
  array.each do |word|
    word.split("").each do |letter|
      non_vowel << letter unless VOWELS.include?(letter.downcase)
    end
  end
  p non_vowel
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# input = array of strings, output = array of strings (with vowels removed)
# first, create an array that lists all vowels => ["a", "e", "i", "o", "u"]
# iterate through each word in the input array, and then iterate once more through each letter
# if the letter is included in the vowels array, then remove that letter. else, keep the letter.
#
