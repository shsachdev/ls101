flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.delete_if {|key, value| key != "Barney"}


array_flint = flintstones.to_a
p array_flint


# better way to do it is to do:

flintstones.assoc("Barney")
