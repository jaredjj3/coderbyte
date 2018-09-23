# Using the Ruby language, have the function DashInsert(str) insert dashes ('-') between each
# two odd numbers in str. For example: if str is 454793 the output should be 4547-9-3.
# Don't count zero as an odd number. 

def DashInsert(str)
  str.chars.map(&:to_i).each.with_object([]) do |num, result|
    if result.empty?
      result << num
    else
      result << "-" if result.last % 2 == 1 && num % 2 == 1
      result << num
    end
  end.join("")
end

puts DashInsert("454793") == "4547-9-3"
puts DashInsert("99946") == "9-9-946"
puts DashInsert("56730") == "567-30"
