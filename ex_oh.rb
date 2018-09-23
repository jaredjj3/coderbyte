# Using the Ruby language, have the function ExOh(str) take the str parameter being passed and
# return the string true if there is an equal number of x's and o's, otherwise return the string
# false. Only these two letters will be entered in the string, no punctuation or numbers.
# For example: if str is "xooxxxxooxo" then the output should return false because there are
# 6 x's and 5 o's. 

def ExOh(str)
  char_map = str.chars.group_by { |char| char }
  char_map.fetch("x", []).count == char_map.fetch("o", []).count
end
   
puts ExOh("xo") == true
puts ExOh("xxo") == false
puts ExOh("xxxo") == false
puts ExOh("xxxoo") == false
puts ExOh("xxoo") == true
puts ExOh("") == true
