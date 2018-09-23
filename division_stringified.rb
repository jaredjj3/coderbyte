# Using the Ruby language, have the function DivisionStringified(num1,num2) take both parameters
# being passed, divide num1 by num2, and return the result as a string with properly formatted
# commas. If an answer is only 3 digits long, return the number with no commas (ie. 2 / 3 should
# output "1"). For example: if num1 is 123456789 and num2 is 10000 the output should be "12,346".

def DivisionStringified(num1, num2)
  quotient = (num1.to_f / num2.to_f).round.to_i.to_s

  result = []
  quotient.reverse.chars.each.with_index do |num, ndx|
    result << "," if ndx > 2 && ndx % 3 == 0
    result << num
  end
  result.reverse.join("")
end

puts DivisionStringified(123456789, 10000) == "12,346"
puts DivisionStringified(2, 3) == "1"
puts DivisionStringified(6874, 67) == "103"
puts DivisionStringified(5, 2) == "3"
puts DivisionStringified(1, 10) == "0"
puts DivisionStringified(5, 54) == "0"
puts DivisionStringified(503394930, 43) == "11,706,859"
