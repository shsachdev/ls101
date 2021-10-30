# Problem

# Find the length of the longest subsequence of same incrementing values in a string

# input = string, output = int

# algorithm

# 1. If the length of the array is 2 or less, just return the length of the array
# 2. Declare a variable increment and set it to 0.
# 3. Declare a variable chain and set it to 2. 
# 4. Iterate through array
  # Find increment between 1st and second number.
  # Check if increment is the same between second and third number.
    # If it's the same, increase chain by 1 and move on to next iteration
    # If it's not the same, set chain back to 2, append number to array chain_tracker, and re-initiliaze the increment to be equal to next num - current num
    # Move on to next iteration
# 5. Return max num from chain tracker 


 

def longest_sequence_in(string)
  arr = string.split(' ').map{|num| num.to_i}
  if arr.length < 3
    return arr.length
  end
  chain_tracker = [2]
  increment = arr[1] - arr[0]
  chain = 2
  arr.each_with_index do |num, idx|
    if idx != 0 and idx != arr.length - 1
      if arr[idx + 1] - arr[idx] == increment 
        chain += 1
        chain_tracker << chain
      else   
        chain = 2
        increment = arr[idx + 1] - arr[idx]
      end
    end
  end
  chain_tracker.max
end

p longest_sequence_in("1 2 3") == 3
p longest_sequence_in("1 2") == 2
p longest_sequence_in("1 3 9") == 2
p longest_sequence_in("7 8 9 2 5 8 11") == 4
p longest_sequence_in("1 3 9 15 21 7 8 2 3 4") == 4