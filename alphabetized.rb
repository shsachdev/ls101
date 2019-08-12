ALPHABET = ("a".."z").to_a

# def alphabetized(str)
#   arr = str.chars
#   letters_only = arr.select do |char|
#     char if ALPHABET.include?(char.downcase)
#   end
#   sorted = letters_only.sort_by(&:downcase)
#   p sorted.join
# end

def alphabetized(s)
  s.scan(/[a-z]/i).sort_by(&:downcase).join
end

# Re-order the characters of a string, so that they are concatenated into a new
# string in "case-insensitively-alphabetical-order-of-appearance" order.
# Whitespace and punctuation shall simply be removed!

p alphabetized("The Holy Bible") == "BbeehHilloTy"


# pseudocode

# input = string, output = string

# Algorithm

# 1. initialize an array of letters.

# 2. turn str into an array of chars.

# 3. iterate through array. (select)

# 4. select only if char is in alphabet.

# 5. store return value of select method.

# 6. sort this array

# 7. invoke join method on this return value.
