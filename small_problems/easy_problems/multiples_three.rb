def multisum(number)
  array = []
  (1..number).each do |elem|
    array << elem if elem%3 == 0 || elem%5 == 0
  end
  sum = 0
  array.each {|num| sum += num}
  sum
end



p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
