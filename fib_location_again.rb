def find_fibonacci_index_by_length(num_of_digits)
  fib_arr = [1,1]
  num1 = 1
  num2 = 1
  loop do
    num1 = num1 + num2
    fib_arr << num1
    break if num1.digits.size >= num_of_digits
    num2 = num2 + num1
    fib_arr << num2
    break if num2.digits.size >= num_of_digits
  end
  fib_arr.size
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847



# Write a method that calculates and returns the index of the
# first Fibonacci number that has the number of digits specified as
# an argument. (The first Fibonacci number has index 1.)

# input = num, output = num

# keep adding fibonnaci sequence numbers to array until number is size of the input num. (loop)
# when it is, stop the loop. and return the position of this num in the array.
