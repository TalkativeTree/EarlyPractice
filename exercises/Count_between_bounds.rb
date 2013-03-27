def count_between(array, lower_bound, upper_bound)
  array << lower_bound << upper_bound

  disc = array.sort.index(lower_bound.to_i)
  drive = array.sort.index(upper_bound.to_i)
  puts array.length - 2
  if lower_bound == array.sort.first and upper_bound == array.sort.last
  	puts "ninja please"
  end
  puts array.sort.first
  puts disc
  puts drive
  if upper_bound < lower_bound
    return 0
  if lower_bound == array.sort.first and upper_bound == array.sort.last
    array.length - 2
  elsif (lower_bound != array.sort.first and upper_bound == array.sort.last) || (lower_bound == array.sort.first and upper_bound != array.sort.last)
    drive - disc - 1
  end

end

puts count_between([], -100, 100)
