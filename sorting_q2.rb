books = [1,2,3
]

# p books.sort_by {|hash| hash[:published].to_i}

p books.sort do |a, b|
  b <=> a
end

# How would you order this array of hashes based on the year of publication of each book,
# from the earliest to the latest?
