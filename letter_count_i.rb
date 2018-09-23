# Using the Ruby language, have the function LetterCountI(str) take the str parameter being passed
# and return the first word with the greatest number of repeated letters. For example: "Today, is
# the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes
# before ever which also has 2 e's. If there are no words with repeating letters return -1. Words
# will be separated by spaces. 

def LetterCountI(str)
  words = str.split(" ")
  words_w_repeat = words.select do |word|
    word.downcase.chars.group_by { |char| char }.any? { |_, group| group.length > 1 }
  end

  words_w_repeat.first || -1
end
   
# keep this function call here    
puts LetterCountI("Today, is the greatest day ever!") == "greatest"
puts LetterCountI("foo bar baz") == "foo"
puts LetterCountI("i really like cheese") == "really"
puts LetterCountI("bar baz") == -1
