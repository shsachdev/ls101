munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# given this nested hash, figure out the total age of just the male members
# of the family.

male_members = munsters.select do |key, value|
  value["gender"] == "male"
end

ages = male_members.map do |k, v|
  v["age"]
end

sum = 0
ages.each {|a| sum += a}

sum
