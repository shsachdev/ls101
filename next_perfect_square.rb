# Return the next square if sq is a perfect square, -1 otherwise

def find_next_square(sq)
  if perfect_square?(sq).empty?
    return -1
  else
    (perfect_square?(sq)[0] + 1) ** 2
  end
end

def perfect_square?(integer) # returns an array filled with factors
  perfect_factors = []
  (1..integer).each do |num|
    if integer%num == 0 && integer/num == num
      perfect_factors << num
    end
  end
  perfect_factors
end


puts find_next_square(121) == 144
puts find_next_square(625) == 676
puts find_next_square(114) == -1


# input = integer, # output = integer

# Algorithm

# 1. Check if sq is a perfect square. If not, return -1.
  # 2. method perfect_square?. Returns array filled with factors.

# 2. Return (factor + 1) * (factor + 1)
