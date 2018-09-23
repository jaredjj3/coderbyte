# Using the Ruby language, have the function VowelCount(str) take the str string
# parameter being passed and return the number of vowels the string contains
# (ie. "All cows eat grass and moo" would return 8). Do not count y as a vowel for this challenge. 
require "set"

def VowelCount(str)
  vowels = %W(a e i o u).to_set
  str.downcase.each_char.count { |char| vowels.include?(char) }
end
   
puts VowelCount("All cows eat grass and moo") == 8
puts VowelCount("foo bar") == 3
puts VowelCount("baz") == 1
  