# Using the Ruby language, have the function PlusMinus(num) read the num parameter being passed
# which will be a combination of 1 or more single digits, and determine if it's possible to separate
# the digits with either a plus or minus sign to get the final expression to equal zero. For example:
# if num is 35132 then it's possible to separate the digits the following way,
# 3 - 5 + 1 + 3 - 2, and this expression equals zero. Your program should return a string of the
# signs you used, so for this example your program should return -++-. If it's not possible to
# get the digit expression to equal zero, return the string not possible.

class Tree
  attr_reader :probes, :root

  def initialize(probes)
    self.probes = probes
  end

  def probes=(probes)
    @probes = probes
    @root = Node.new(probe)
  end
end

class Node
  attr_accessor :value, :children

  def initialize(value)
    @children = Set.new
    @value = value
  end

  def parent=

  def dfs(target)

  end
end

def PlusMinus(num)
  tree = Tree.new(num.to_s.chars.map(&:to_i))

  "not possible"
end

puts PlusMinus(35132) == "-++-"
puts PlusMinus(199) == "not possible"
puts PlusMinus(26712) == "-+--"
