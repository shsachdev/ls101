# - create an empty array called "result" that will contain all
# - the required substrings.
# - initialize variable start_substring_idx and assign 0 to it.
# - initalize variable end_substring_idx and assign value of
# - start_substring_idx + 1 to it.
# - enter loop which will break when start_substring_idx == str.size
# - within that loop, enter another loop that will break if end_substring_idx
#   is equal to str.size
# - append to the result array part of the string from
#   start_substring_idx to end_substring_idx.
#   increment "end_substring_idx" by 1.
# - end the inner loop
# - increment start_substring_idx by 1
# - reassign "end_substring_idx" to start_substring_idx += 1
# - end outer loop
# - return "result" array

def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do
    break if start_substring_idx == str.size
    loop do
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  result
end



# - Inside the `is_palindrome?` method, check whether the string
#   value is equal to its reversed value. You can use the
#   String#reverse method.


def is_palindrome?(str)
  str == str.reverse
end


def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end
