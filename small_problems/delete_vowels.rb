
VOWELS = ["a", "e", "i", "o", "u"]

def remove_vowels(array)
  non_vowel = []
  array.join(" ").chars.each do |letter|
    non_vowel << letter unless VOWELS.include?(letter.downcase)
  end
  non_vowel.join.split
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# input = array of strings, output = array of strings (with vowels removed)
# first, create an array that lists all vowels => ["a", "e", "i", "o", "u"]
# second,
