def solution(number)
  actual_number = number - 1
  array = (1..actual_number).to_a
  divisors = []
  array.each do |num|
    divisors << num if num%3 == 0 || num%5 == 0
  end
  divisors.sum
end
