def high_and_low(str)
  numbers = []
  str.chars.each do |char|
    if char == "0"
      numbers << char.to_i
    elsif char.to_i != 0
      numbers << char.to_i
    end
  end
  max = numbers.max
  min = numbers.min
  "#{max.to_s} #{min.to_s}"
end





p high_and_low("1 2 3 4 5") == "5 1"
