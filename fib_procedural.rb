def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

puts fibonacci(20) == 6765

puts fibonacci(100) == 354224848179261915075
