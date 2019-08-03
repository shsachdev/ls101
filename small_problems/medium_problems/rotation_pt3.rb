require_relative "rotation_pt2.rb"

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end



# input = number, output = number

# 735291 (rotate first number) => 352917 (keep first digit fixed in place) => 329175 (keep frst 2 digits fixed in place)
  # => 321759 (keep first 3 digits fixed in place) => 321597 (keep first 4 digits fixed) => 321579

#


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
