def balancer(string)
  array = string.chars
  left_parentheses = []
  right_parentheses = []
  array.each do |char|
    if char == "("
      left_parentheses << char
    elsif char == ")"
      right_parentheses << char
    end
  end
  if left_parentheses.size == right_parentheses.size
    true
  else
    false
  end
end



# input = string, output = boolean


p balancer("hi")
p balancer("(hi")
p balancer("(hi)")
