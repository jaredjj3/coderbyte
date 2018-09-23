# Using the Ruby language, have the function ArithGeo(arr) take the array of numbers stored
# in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or
# return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either
# pattern return -1. An arithmetic sequence is one where the difference between each of the numbers
# is consistent, where as in a geometric sequence, each term after the first is multiplied by some
# constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54].
# Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain
# all the same elements.

ARITHMETIC = "Arithmetic".freeze
GEOMETRIC = "Geometric".freeze

def arithmetic?(arr)
  return false if arr.length <= 2
  arr.each_cons(2).map { |(n1, n2)| n2 - n1 }.uniq.length == 1
end

def geometric?(arr)
  return false if arr.length <= 2
  arr.each_cons(2).map { |(n1, n2)| n2 / n1 }.uniq.length == 1
end

def ArithGeo(arr)
  return GEOMETRIC if geometric?(arr)
  return ARITHMETIC if arithmetic?(arr)
  -1
end
   
puts ArithGeo([2, 4, 6, 8]) == ARITHMETIC
puts ArithGeo([2, 6, 18, 54]) == GEOMETRIC
puts ArithGeo([]) == -1
puts ArithGeo([1, 2]) == -1