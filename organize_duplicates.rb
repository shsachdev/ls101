def adder(array, num)
  array.each do |sub_array|
    if sub_array.include?(num)
      sub_array << num
    end
  end
end

def group(arr)
  organized = []
  arr.uniq.each do |elem|
    organized << [elem]
  end
  arr.each do |num|
    adder(organized, num)
  end
  organized.each do |sub_array|
    sub_array.pop
  end
  p organized
end




p group([3, 2, 6, 2, 1, 3]) == [[3, 3], [2, 2], [6], [1]]

# Given an array of numbers, your function should return an array of arrays,
# where each subarray contains all the duplicates of a particular number.
# Subarrays should be in the same order as the first occurence of the
# number they contain:


# input = array, output = array.


# pseudocode

# Algorithm

# 1. initialize a new array (organized)

# 2. iterate through arr.

# 3. at each iteration, check if number is in organized. (define a method to do this)
  # if it is not, add it to organized as an element of an array.
  # if it is, add it to the sub_array that it's already a part of.
    # will need to flesh this out.

# 4. return organized.
