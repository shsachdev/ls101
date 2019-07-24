def after_midnight(string)
  if string == "24:00" || string == "00:00"
    output = 0
  else
    number = string.split(":")
    output = (number[0].to_i * 60) + (number[1].to_i)
  end
  p output
end

def before_midnight(string)
  if string == "24:00" || string == "00:00"
    output = 0
  else
    number = string.split(":")
    output = (number[0].to_i * 60) - (number[1].to_i)
  end
  output
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
