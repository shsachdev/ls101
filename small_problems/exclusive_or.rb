def xor?(a,b)
  if (a == true && b == false) || (a == false && b == true)
    true
  else
    false
  end
end



puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
