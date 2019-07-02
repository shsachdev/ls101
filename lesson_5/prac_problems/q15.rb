arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# Given this data structure write some code to return an array which
# contains only the hashes where all the integers are even.


# arr.select do |k,v|
#   v.all? {|num| num.even?}
# end

arr.map do |hash|
  hash.select do |key, value|
    value.all? {|num| num.even?}
  end
end

# this is wrong 
