countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

# Given the following hash which contains keys representing countries and
# values representing the capital cities of those countries, return a new hash
# containing only the key-value pairs where the country begins
# with the letter 'B'.

countries_and_capitals.select do |k,v|
  k[0] == "B"
end
