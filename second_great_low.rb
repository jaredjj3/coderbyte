# Using the Ruby language, have the function SecondGreatLow(arr) take the array of numbers stored
# in arr and return the second lowest and second greatest numbers, respectively, separated by a
# space. For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98. The array
# will not be empty and will contain at least 2 numbers. It can get tricky if there's just two numbers! 

def SecondGreatLow(arr)
  sorted = arr.sort

  if arr.length == 2
    "#{sorted[1]} #{sorted[0]}"
  else
    sorted.uniq!
    "#{sorted[1]} #{sorted[-2]}"
  end
end

puts SecondGreatLow([7, 7, 12, 98, 106]) == "12 98"
puts SecondGreatLow([7, 12, 98, 106]) == "12 98"
puts SecondGreatLow([12, 7]) == "12 7"
puts SecondGreatLow([12, 12]) == "12 12"
puts SecondGreatLow([1, 2, 3, 3]) == "2 2"
puts SecondGreatLow([1, 42, 42, 180]) == "42 42"
puts SecondGreatLow([4, 90]) == "90 4"
