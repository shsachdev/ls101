def time_of_day(num)
  if num == 0
    return "00:00"
  end
  minutes = num % 60
  if minutes <= 9
    minutes = minutes.digits.unshift(0).join("")
  else
    minutes = minutes.to_s
  end

end



# pseudocode
# input = integer, output = string.
# output will have a ":" in the middle.
# format of output is: hh:mm
# to get the minutes, you do input % 60. so that handles the "second" part of the string output
  # however, note that if minute is a single digit, you need to append a zero to its beginning.done.
  # minutes is now ready to go as a string.
# now, to get the first part (__:).
  # some thoughts:
  # if num is > 0 and < 60, then hh == 00
  # maybe try some kind of hash?
