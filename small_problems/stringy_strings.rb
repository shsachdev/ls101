# write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# def stringy(int)
#   empty_string = ""
#   while int != 1
#     empty_string << "1"  #"10101"
#     int = int - 1
#     empty_string << "0"
#     int = int - 1
#   end
#   empty_string
# end
#
#
# puts stringy(5)
#
# puts stringy(5) == "10101"


def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? 1 : 0
    numbers << number
  end

  numbers.join
end


# def test
#   i = 6
#   while i != 4
#     puts "hello"
#     i = 4
#     puts "still executing loop"
#   end
# end
#
# test()
