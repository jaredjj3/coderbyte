# Using the Ruby language, have the function SwapCase(str) take the str parameter and swap the
# case of each character. For example: if str is "Hello World" the output should be hELLO wORLD.
# Let numbers and symbols stay the way they are.

def SwapCase(str)
  str.chars.map { |char| char =~ /[a-z]/ ? char.upcase : char.downcase }.join("")
end

puts SwapCase("Hello-LOL") == "hELLO-lol"
puts SwapCase("Sup DUDE!!?") == "sUP dude!!?"
