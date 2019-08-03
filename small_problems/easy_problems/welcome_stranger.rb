def greetings(array, hash)
  person_name = ""
  occupation = hash[:title] + " " + hash[:occupation]
  array.each_with_index do |str, index|
    if index == array.size - 1
      person_name << str
    else
      person_name << str + " "
    end
  end
  p "Hello, #{person_name}! Nice to have a #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
