def sub_strings(string)
  arr = string.chars
  tracker = []
  char_tracker = 0
  loop do
    end_tracker = arr.size - 1
    loop do
      tracker << arr[char_tracker..end_tracker]
      end_tracker = end_tracker - 1
      break if end_tracker == char_tracker - 1
    end
    break if char_tracker == arr.size - 1
    char_tracker += 1
  end
  tracker.map do |sub_array|
    sub_array.join
  end
end

# p sub_strings("1341") == ["1", "13", "134", "1341", "3", "34", "341", "4", "41", "1"]

def solve(str)
  sub_strings_arr = sub_strings(str)
  odds = []
  sub_strings_arr.each do |string|
    odds << string if string.to_i.odd?
  end
  odds.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12


# Given a string of integers, return the number of odd-numbered substrings that
# can be formed.

# pseudocode

# input = string, output = integers

# Algorithm

# 1. calculate all possible sub-strings.
  # define new method sub_strings that returns all sub_strings.
    # input = string, output = array
    # turn string into array of chars.
    # initialize array called tracker.
    # initialize 2 counters (char_tracker, end_tracker)
    # iterate through array, and add each possible sub_string to tracker.

# 2. select the ones that are odd.

# 3. return the size of this array which contains all odd-substrings.
