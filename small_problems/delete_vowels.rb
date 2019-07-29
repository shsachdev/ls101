
VOWELS = ["a", "e", "i", "o", "u"]

def remove_vowels(array)
  non_vowel = []
  array.join(" ").chars.each do |letter|
    non_vowel << letter unless VOWELS.include?(letter.downcase)
  end
  p non_vowel
  p non_vowel.join
  p non_vowel.join.split
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ'] #=> false


# solution shows much easier way to solve problem.

def remove_vowels(string)
  strings.map {|string| string.delete("aeiouAEIOU")}
end
