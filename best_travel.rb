# Problem

# Given a list of distances, a max number of towns (k), and a max distance (t), find the max sum of k towns that
# is less or equal to than the max distance.

# If length of distances is less than k, return nil

# input = integer, integer, array

# output = integer

# Algorithm

# 1. If length of ls is less than k, return nil
# 2. Find all possible k length combinations of ls
  # 

def choose_best_sum(t, k, ls)
  possible_trips = ls.combination(k).to_a
  viable_trips = possible_trips.select {|subarr| subarr.inject(:+) <= t}
  sum_all = viable_trips.map {|trip| trip.sum}
  return sum_all.max
end

p choose_best_sum(163, 3, [50, 55, 56, 57, 58]) == 163
p choose_best_sum(230, 3, [91, 74, 73, 85, 73, 81, 87]) == 228
# p choose_best_sum(230, 3, [91, 74]) == nil 


# Example

# ls = [50, 55, 57, 58, 60]

# [50,55,57],[50,55,58],[50,55,60],[50,57,58],[50,57,60],[50,58,60],[55,57,58],
# [55,57,60],[55,58,60],[57,58,60].