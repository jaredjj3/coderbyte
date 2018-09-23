# Using the Ruby language, have the function ThirdGreatest(strArr) take the array of strings stored
# in strArr and return the third largest word within it. So for example: if strArr is
# ["hello", "world", "before", "all"] your output should be world because "before" is 6 letters long,
# and "hello" and "world" are both 5, but the output should be world because it appeared as the last
# 5 letter word in the array. If strArr was ["hello", "world", "after", "all"] the output should
# be after because the first three words are all 5 letters long, so return the last one. The array
# will have at least three strings and each string will only contain letters. 

def ThirdGreatest(strArr)
  strArr.group_by(&:length).to_a.sort_by(&:first).reverse.flat_map { |_, words| words }[2]
end

puts ThirdGreatest(["coder", "byte", "code"])  == "code"
puts ThirdGreatest(["abc", "defg", "z", "hijk"]) == "abc" 
puts ThirdGreatest(["hello", "world", "after", "all"]) == "after"
