LETTERS = ("a".."m").to_a

def printer_error(str)
  errors = []
  arr = str.chars
  arr.each do |letter|
    if LETTERS.include?(letter) != true
      errors << letter
    end
  end
  "#{errors.size} / #{arr.size}"
end
