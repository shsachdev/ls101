def century(year)
  value = ""
  if year%100 == 0
    value = (year / 100)
  else
    value = ((year / 100) + 1)
  end
  century_suffix(value)
end

def century_suffix(year)
  if value%10 == 1 && value.to_s.include?("11") != true
    return value.to_s + "st"
  elsif value
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'


# st => 1, 21, 31, 41, 51, 61, 71, 81, 91, 101,
# nd =>
# rd =>
# th =>
