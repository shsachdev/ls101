def max_multiple(divisor, bound)
  possible_numbers = (divisor..bound).to_a
  remainder_zero_numbers = []
  possible_numbers.each do |num|
    remainder_zero_numbers << num if num%divisor == 0
  end
  remainder_zero_numbers.max
end


p max_multiple(2,7) == 6
p max_multiple(10,50)  == 50
p max_multiple(37,200) == 185





#
