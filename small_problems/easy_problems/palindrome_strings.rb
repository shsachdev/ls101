def palindrome?(string)
  array = string.split("")
  palindrome_array = []
  i = -1
  while i != (-array.size - 1)
    palindrome_array << array[i]
    i = i - 1
  end
  if palindrome_array == array
    true
  else
    false
  end
end


puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
