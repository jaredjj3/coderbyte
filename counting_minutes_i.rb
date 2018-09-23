# Using the Ruby language, have the function CountingMinutesI(str) take the str parameter being
# passed which will be two times (each properly formatted with a colon and am or pm) separated by
# a hyphen and return the total number of minutes between the two times. The time will be in a 12
# hour clock format. For example: if str is 9:00am-10:00am then the output should be 60. If str is
# 1:00pm-11:00am the output should be 1320.

class CMTime
  attr_accessor :str

  def initialize(str)
    self.str = str
  end

  def hours
    str.split(":")[0].to_i
  end

  def minutes
    str.split(":")[1][0..1].to_i
  end

  def am?
    str.include?("am")
  end

  def abs_mins
    (hours * 60) + minutes + (am? ? 720 : 0)
  end

  def -(other)
    diff = abs_mins - other.abs_mins
    diff < 0 ? diff + 1440 : diff
  end
end

def CountingMinutesI(str)
  times = str.split("-").map(&CMTime.method(:new))
  times[1] - times[0]
end

puts CountingMinutesI("12:30pm-12:00am")# == 690
puts CountingMinutesI("1:23am-1:08am")# == 1425
puts CountingMinutesI("9:00am-10:00am")# == 60
puts CountingMinutesI("1:00pm-11:00am")# == 1320
