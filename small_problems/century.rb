def century(year)
  value = ""
  if year%100 == 0
    value = (year / 100)
  else
    value = ((year / 100) + 1)
  end
  value.to_s + century_suffix(value)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


# st => 1, 21, 31, 41, 51, 61, 71, 81, 91, 101,
# nd =>
# rd =>
# th =>
