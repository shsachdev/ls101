def get_grade(num1, num2, num3)
  score = (num1 + num2 + num3).to_f / 3
  case score
  when 90..100
    return "A"
  when 80..90
    return "B"
  when 70..80
    return "C"
  when 60..70
    return "D"
  when 0..60
    return "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
