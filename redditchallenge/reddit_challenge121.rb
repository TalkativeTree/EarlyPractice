def coin_machine coin
	coin == 0 ? 1 : coin_machine(coin/2) + coin_machine(coin/3) + coin_machine(coin/4)
end

puts coin_machine 1000
def bytelandian coin
  change = [coin]
  stack = 0
  change.each do |make|
  	if make == 0
  		stack += 1
  	else
  		change << (make / 2) 
  		change << (make / 3)
  		change << (make / 4)
 		end
  end
  stack
end



puts bytelandian 1000