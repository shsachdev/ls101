# Score a throw according to these rules 

# A single die can only be counted once in each role

# Rules

#  Three 1's => 1000 points
 # Three 6's =>  600 points
 # Three 5's =>  500 points
 # Three 4's =>  400 points
 # Three 3's =>  300 points
 # Three 2's =>  200 points
 # One   1   =>  100 points
 # One   5   =>   50 point

# For ex, a given "5" can only count as part of a triplet or as a single 50 point, but not both in the same
# role

# input = array with five six-sided dice values, output = integer

# Do not mutate input to function - return new array

# Data Structures
  # input = array, output = integer
  # might need to use a hash to store the rules

# Algorithm

# 1/ Declare a constant RULES that is a hash that contains as keys an array and as values an integer.
  # key is an array with 2 elements - first one is a count, second is the number in question
  # value is the score that particular roll maps to 

# 2/ Create a new hash called num_counter. 

# 3/ Iterate through input array and add to counter each value and its count in input array. And don't repeat 
  # any key by getting all keys and calling the include? method. 

# {5 => 1, 1 => 2, 3 => 1, 4 => 1}

# 4/ declare a variable total_score and initialize it to 0

# 5/ Iterate through num_counter and check if value and count match any key in RULEs. 
  # If yes, incremenet total_score by the value in RULES.
  # If not, subtract 1 from the count in num_counter and add 

RULES = {[1,1] => 100, [1,5] => 50, [3,2] => 200, [3,3] => 300, [3,4] => 400, [3,5] => 500, [3,6] => 600, [3,1] => 1000}

def score(dice)
end

# test cases

p score([5, 1, 3, 4, 1]) == 250

p score([1,1,1,3,1]) == 1100

p score([2,4,4,5,4]) == 450

# had solved this question earlier but right now I'm blanking. will come back to it. 