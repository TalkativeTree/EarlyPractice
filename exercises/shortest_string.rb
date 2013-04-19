

def longest_string(array)
   array.min_by {|x| x.length } 
end
array = ["aaaaaaaaaa", "aaaaaaaa", "aaaaa", "aaaaaaa", "aaaaaaaaa", "aaa", "a", "aa", "aaaaaa", "aaaa"]
puts longest_string([array])