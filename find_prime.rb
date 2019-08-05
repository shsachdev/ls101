def is_prime?(number)
  factors = []
  arr = (1..number).to_a
  arr.each do |int|
    factors << int if number%int == 0
  end
  if factors.size == 2
    true
  else
    false
  end
end


def find_primes(num1, num2)
  array = (num1..num2).to_a
  array.each do |num|
    if is_prime?(num)
      p num
    end
  end
end

find_primes(3,10)
find_primes(5,20)
