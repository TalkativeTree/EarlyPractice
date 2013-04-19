def num_comas number
  if number > 3
    num_of_comas = number.to_s.length / 3
    reversed_number = number.to_s.reverse
    while num_of_comas > 0
      reversed_number.insert((3 * num_of_comas), ',')
      number = reversed_number
      num_of_comas = num_of_comas - 1
    end
    number = reversed_number.reverse
  else
    number
  end
  if number.index(",") == 0
    number.slice!(0)
  end
  number
end

puts num_comas(299999)