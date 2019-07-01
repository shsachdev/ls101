hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |k,v|
  v.each do |string|
    string.split('').each do |letter|
      puts letter if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
    end
  end
end
