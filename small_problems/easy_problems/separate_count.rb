def sequence(count, num)
  test = num
  final_array = []
  loop do
    break if count == 0
    final_array << test
    test += num
    count -= 1
  end
  final_array
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
