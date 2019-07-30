def find_fibonacci_index_by_length(num)
  i = 2
  fib_num_1 = 1
  fib_num_2 = 1
  loop do
    fib_num_1 = fib_num_2 + fib_num_1
    i += 1
    break if fib_num_1.digits.size == num
    fib_num_2 = fib_num_2 + fib_num_1
    i += 1
    p i
    break if fib_num_2.digits.size == num
  end
  i
end




# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847



# input = number, output = number
# iterate through the fibonnaci series until you find an integer that has the number of digits == number.
# return the index position of that integer.
