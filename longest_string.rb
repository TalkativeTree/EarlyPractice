# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +array+ is an array of strings
# longest_string(array) should return the longest string in +array+
#
# If +array+ is empty the method should return nil

def longest_string(array)
  array.map{|x, v| v = x.size;x}.sort.last

end

puts longest_string(['a', 'aa', 'aaaaa', 'aaaaaaaaaaaaaa', 'aaaaaaaaa'])