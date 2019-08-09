# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

# need to focus on double_iteration.

LETTERS = ("a".."z").to_a

def high(str)
  arr_words = str.split(" ")
  score_arr = arr_words.map do |word| # to understand this code, you really need to understand how sub_iteration works.
    score = 0
    word.each_char do |char|
      score = score + LETTERS.index(char) + 1
    end
    score
  end
  arr_words[score_arr.index(score_arr.max)]
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') == 'aa'

=begin

Problem/Examples
- input: string
- output: string
- Non-mutating method
- Special cases

Algorithm

1. constant: array of letters

2. Calculate score of a word
- intialize counter
- iterate through the letters
- add the score to the counter
- return score

3. Calculate score of all words
- create an array of the separated words
- Map this array with the corresponding scroes of each word

4. Identify the highest scoring word
- identify the first index of the highest score
- return the word from that index
=end

LETTERS = ('a'..'z').to_a

def word_score(word)
  count = 0
  word.each_char do |letter|
    count += LETTERS.index(letter) + 1
  end
  count
end

def high(string)
  words = string.split(' ')
  scores = words.map do |word|
    word_score(word)
  end
  high_score_index = scores.index(scores.max)
  words[high_score_index]
end

https://www.orgamizer.com/blog/iterating-in-ruby


Integer#upto

#pseudo-code

#

# first thing that comes to mind; to score each letter, I could basically initialize an array of letters: letters = ("a".."z").to_a; and then to get the score of each letter, we could simply invoke the index method on this array and pass in the string we want. And we'll increase our return value by 1.

# first, turn this string into an array of words. using the split(" ") method.

# then, I'm going to iterate through this array. and I'm going to sub_iterate over each character.

# and I'm going to iterate through each character by using the map method. and specifically: at each iteration, I'm simply going to make my return value sometime like arr.index(char) + 1.

#
