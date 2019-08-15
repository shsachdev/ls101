NUMS = (0..9).to_a

def re_letter(str)
  characters = str.chars
  converted = characters.map do |char|
    char.to_i
  end
  hash = {}
  characters.each do |char|
    if NUMS.include?(char.to_i)
      if hash.include?(char.to_i)
        hash[char.to_i] = hash[char.to_i] + 1
      else
        hash[char.to_i] = 1
      end
    end
  end
  if hash.size == 0
    nil
  end
  arr = hash.sort_by do |key, value|
    value
  end
  arr.reverse
end


# Given a string, find the number character that is repeated most times and return
# its numeric value. If multiple characters are repeated the same time, return first one.
# If there are no numeric characters in a string, return nil.

p re_letter('There isn\' any number here!') == nil
p re_letter('%^&*()!') == nil
p re_letter('111222333')
p re_letter('1234335521444') == 4
p re_letter('') == nil
p re_letter('011-555-333-23') == 3
p re_letter('1') == 1
p re_letter('444352893599119') == 9

# pseudocode

# input = string, output = integer

# test-cases: return nil if string does not contain number.

# Alogorithm

# 1. Initialize array filled with numbers 0-9 (nums)

# 2. turn string into its chars.

# 3. check if any numbers. if not => return nil

# 4. find number of times each number occurs => store number and occurence in hash.

# 5. find number with max value, in order of which one came first.

# 6. return this number
