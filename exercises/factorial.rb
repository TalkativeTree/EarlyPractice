def factorial(num)
  (1..(num.zero? ? 1 : num)).inject(:*) 

end

puts factorial(0)
