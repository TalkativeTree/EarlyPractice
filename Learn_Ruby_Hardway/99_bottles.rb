num_bottles = 99
while num_bottles > 1

  full_bottles = num_bottles - 1
  -
  puts "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer. Take one down, pass it around #{full_bottles} bottles of beer on the wall."
  num_bottles = full_bottles
end