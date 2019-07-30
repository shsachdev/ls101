def palindromic_number?(num)
  array = num.to_s.split("")
  if array == array.reverse
    true
  else
    false
  end
end

p palindromic_number?(77)
p palindromic_number?(788879)
