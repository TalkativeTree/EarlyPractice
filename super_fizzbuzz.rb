#It should return a "fizzbuzzed" Array, i.e., the array is identical to the input with the following substitutions:

#Multiples of 3 should be replaced with the string "Fizz"
#Multiples of 5 should be replaced with the string "Buzz"
#Multiples of 15 should be replaced with the string "FizzBuzz"

def super_fizzbuzz(array)
  new_array = []
  array.each do |num|
    if num % 15 == 0
    	new_array << "FizzBuzz"
    elsif num % 3 == 0
    	new_array << "Fizz"
    elsif num % 5 == 0
    	new_array << "Buzz"	
    else
      new_array << num	
    end
    
  end
  new_array
end  

puts super_fizzbuzz([1,2,15])