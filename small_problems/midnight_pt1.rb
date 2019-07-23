def time_of_day(num)
  minutes = num % 60
  if minutes <= 9
    minutes = 16
  end
  puts "hello"
end



# pseudocode
# input = integer, output = string.
# output will have a ":" in the middle.
# format of output is: hh:mm
# to get the minutes, you do input % 60. so that handles the "second" part of the string output
  # however, note that if minute is a single digit, you need to append a zero to its beginning.
# now, to get the first part,
