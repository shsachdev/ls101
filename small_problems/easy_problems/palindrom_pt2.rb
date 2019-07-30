def real_palindrome?(string)
  array = string.downcase.delete('^a-z0-9').split(" ")
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


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
