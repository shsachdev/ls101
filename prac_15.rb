arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


def checker_all(arr)
  evens_1 = []
  arr.each do |elem|
    evens_1 << elem if elem.even?
  end
  if evens_1.size == arr.size
    true
  else
    false
  end
end

def checker(hsh)
  evens = []
  hsh.each do |key,value|
    evens << key if checker_all(value)
  end
  if evens.size == hsh.keys.size
    true
  else
    false
  end
end

p (arr.select do |hash|
  checker(hash)
end)


# Algorithm

# 1. Use the select method.

# 2. Initialize a mthod called checker, which checks if each integer for each hash is even.

# Given this data structure write some code to return an array which contains
# only the hashes where all the integers are even.



# => [{e: [8], f: [6, 10]}]
