# Given a list of integers and a single sum value, return the first two
# values (parse from the left please) in order of appearance that add up to
# form the sum.


def sum_pairs(ints, s)
  arr = []
  ints.each do |int|
    target_number = s - int
    if ints.include?(target_number)
      arr << [int, target_number]
    end
  end
  if arr.size == 0
    nil
  else
    arr[0]
  end
end

# input = array, sum
# output = array

puts sum_pairs([1, 4, 8, 7, 3, 15], 8) == [1,7]

puts sum_pairs([1, -2, 3, 0, -6, 1], -6) == [0,-6]

puts sum_pairs([20, -13, 40], -7) == nil

puts sum_pairs([1, 2, 3, 4, 1, 0], 2) == [1,1]

# Algorithm

# 1.
