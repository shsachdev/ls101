def persistence(num)
  count = 0
  loop do
    break if num.digits.size == 1
    product = 1
    arr = num.digits.reverse
    arr.each do |number|
      product = product * number
    end
    num = product
    count = count + 1
  end
  count
end


p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4

# pseudocode

# input = int, output = int

# test-cases: nothing unusual

# Algorithm

# 1. initialize a loop, that breaks when num.digits.size == 1.

# 2. turn num into array of numbers.

# 3. keep track of product, iterate through this array.

# 4. re-assign num to this product value.

# 5. return num.digits[0]
