def fizzbuzz(int1, int2)
  (int1..int2).to_a.each do |num|
    if num%3 == 0 && num%5 == 0
      puts "FizzBuzz"
    elsif num%3 == 0
      puts "Fizz"
    elsif num%5 == 0
      puts "Buzz"
    else
      puts num
    end
  end
end

fizzbuzz(1, 15)


# inputs = integers, output = statements printed on screen. the method returns nil.

#
