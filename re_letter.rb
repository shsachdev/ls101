NUMS = (1..9).to_a

def re_letter(str)
  array = str.chars
  numbers = []
  array.each do |char|
    if NUMS.include?(char.to_i)
      numbers << char.to_i
    elsif char == "0"
      numbers << char.to_i
    end
  end
  if numbers == []
    return nil
  end
  count_nums = numbers.map do |num|
    numbers.count(num)
  end
  index = count_nums.index(count_nums.max)
  numbers[index]
end


# Given a string, find the number character that is repeated most times and return
# its numeric value. If multiple characters are repeated the same time, return first one.
# If there are no numeric characters in a string, return nil.

p re_letter('There isn\' any number here!') == nil
p re_letter('%^&*()!') == nil
p re_letter('111222333') == 1
p re_letter('1234335521444') == 4
p re_letter('') == nil
p re_letter('011-555-333-23') == 3
p re_letter('1') == 1
p re_letter('444352893599119') == 9

# pseudocode

# input = string, output = integer

# test-cases: return nil if string does not contain number.

# Algorithm

# 1.
