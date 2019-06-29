contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
array = [:email, :address,:number ]

# iterate over the contacts hash and populate the associated data from the contact_data array.

contacts.each do |k,v|
  array.each do |sym|
    contacts[k][sym] = contact_data.shift
  end
end

puts contacts
