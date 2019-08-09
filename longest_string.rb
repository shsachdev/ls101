def longest(arr, n)
  nums = arr.map do |str|#=> nums = [5, 5, 8, 5]
    str.size
  end
  
end


p longest(['Hello','World','Codewars','Katas'],3) == "World"
# p longest(['Hello','World','Codewars','Katas'],4) == "Katas"
# p longest(['aa', 'bb', 'cc', 'dd', 'eee', 'b', 'f', 'ff', 'hhh', 'gggg'],4) == "aa"
# p longest(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'k'],1) == "a"
# p longest(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'k','l'],1) == "a"



# def longest(arr, n)
#   nums = arr.map do |str| #=> nums = [5, 5, 8, 5]
#     str.size
#   end
#   nums_sorted = nums.sort #=> nums_sorted = [8, 5, 5, 5]
#   value = 0
#   nums_sorted.each_with_index do |num, index|
#     if index == n - 1
#       value = index
#     end
#   end
#   arr[value]
# end


# pseudocode


# inputs = array, integer. outputs = string.

# algorithm

# 1. iterate through arr and map each element to its size. store the return value (nums).
# 2. nums is array of string lengths
# 3. create a copy of nums, and sort it. call it nums_sorted.
# 4. look for the nth largest string value by doing nums_sorted[n-1]
# 5. once we have this value, look for the index of this value in nums.
# 6. finally, use this index to search through arr and return the nth largest string.
