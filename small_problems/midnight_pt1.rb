# def time_of_day(minutes)
#   if minutes == 0
#     return "00:00"
#   elsif (minutes <=> 0) > 0
#     mm = minutes % 60
#     dv = ""
#     if mm <= 9
#       dv = ":0#{mm}"
#     else
#       dv = mm
#     end
#     return "something" + ":" + "#{mm}"
#   else
#     mm = 60 - (minutes % 60)
#     return "something" + ":" + "#{mm}"
#   end
# end




# pseudocode
# input = integer, output = string.
# output will have a ":" in the middle.
# convert the minutes into hours.
# ex: 0 + 60min = 0 + 1hr => output = 01:00
# ex: 0 - 240min = 0 - 4hr => output = 20:00
# format is hh:mm
#
