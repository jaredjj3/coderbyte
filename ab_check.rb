# Using the Ruby language, have the function ABCheck(str) take the str parameter being passed
# and return the string true if the characters a and b are separated by exactly 3 places
# anywhere in the string at least once (ie. "lane borrowed" would result in true because
#$ there is exactly three characters between a and b). Otherwise return the string false.

def ABCheck(str)
  str.each_char.with_index do |char, ndx|
    if char == "a"
      return "true" if str[ndx + 4] == "b"
    elsif char == "b"
      return "true" if str[ndx + 4] == "a"
    end
  end

  return "false"
end
  
puts ABCheck("foo") == "false"
puts ABCheck("lane borrowed") == "true"
puts ABCheck("a   b") == "true"