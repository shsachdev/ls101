munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  if munsters[key]["age"] < 17
    munsters[key]["age_group"] = "kid"
  elsif munsters[key]["age"] > 18 && munsters[key]["age"] < 64
    munsters[key]["age_group"] = "adult"
  else
    munsters[key]["age_group"] = "senior"
  end
end
