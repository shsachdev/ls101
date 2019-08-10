def unique_in_order(str)
  arr = str.chars
  i = 0
  unique_arrs = []
  while i < arr.size - 1
    if arr[i] == arr[i + 1]
      i += 1
    else
      unique_arrs << arr[i]
  end
  unique_arrs << arr.pop
  unique_arrs
end


p unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD') == ['A', 'B', 'C', 'c', 'A', 'D']


# Implement the function unique_in_order which takes as argument a sequence and
# returns a list of items without any elements with the same value next to each
# other and preserving the original order of elements.


#pseudocode


# input = str, output = array

# algorithm

# 1. turn string into array of its characters.
# 2. compare characters next to each other.
    # <=>
    # if they are not the same, delete the first one.
# 3. keep doing this until no two characters next to each other are the same.
    # use a loop.
    # break the loop once no two characters the same.
# 4. return this array.
