# Using the Ruby language, have the function ArrayAdditionI(arr) take the array of numbers
# stored in arr and return the string true if any combination of numbers in the array
# (excluding the largest number) can be added up to equal the largest number in the array,
# otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the
# output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not
# contain all the same elements, and may contain negative numbers. 

def ArrayAdditionI(arr)
  return false if (max = arr.max).nil?

  arr_wo_max = arr.reject { |num| num == max }
  arr_wo_max.each_index.any? do |ndx|
    arr_wo_max.combination(ndx + 1).any? { |combination| combination.inject(&:+) == max }
  end
end
     
puts ArrayAdditionI([4, 6, 23, 10, 1, 3]) == true
puts ArrayAdditionI([4, 6, 23, 1, 3]) == false
puts ArrayAdditionI([]) == false
