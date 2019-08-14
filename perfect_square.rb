def perfect_factors(num)
  perfect_divisors = []
  (1..num).each do |number|
    perfect_divisors << number if number*number == num
  end
  perfect_divisors
end



def find_next_square(int)
  if perfect_factors(int).size == 0
    return -1
  else
    (perfect_factors(int)[0] + 1) * (perfect_factors(int)[0] + 1)
  end
end

p find_next_square(121) == 144

p find_next_square(625) == 676

p find_next_square(114) == -1

# pseudocode

# input = integer, output = integer

# test-cases: in case 3, we return -1 because 114 not a perfect square.

# Algorithm

# 1. check if integer is a perfect square. if it's not, return -1.

# 2. find the number that yields the perfect square inputted. (144 => 12)
  # find all its factors. factor that occurs twice => perfect divisor.
  # initialize a new method.

# 3. increase that number by 1, multiply it by itself, and return the value.
