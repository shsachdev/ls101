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
  hours = num / 60
  if hours > 24
    loop do
      hours = hours - 24
      break if hours <= 24
    end
  elsif hours == 24 || hours == -24
    hours = "00"
  end
  hours.to_s + ":" + minutes
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


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
