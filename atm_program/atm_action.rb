def atm_action
  puts "What would you like to do?"
  options = ["...Check Balance", "...Deposit", "...Withdraw", "...Quick Cash"]
  puts options
  print prompt
  decision = STDIN.gets.chomp()
#...Check Balance
  if decision == "Check Balance" 
    print "There is $#{balance} currently in #{account}"
  	puts
  	decision = STDIN.gets.chomp()
#...Deposit
  elsif decision == "Deposit"
    puts "How much are you depositing?"
	print prompt
	deposit = STDIN.gets.chomp()
	  
	puts "Confirm you would like to deposit #{deposit}"
	print prompt
	choice = STDIN.gets.chomp()
	  
  elsif choice == "yes"
	new_total = deposit.to_f + balance.to_f
	puts "You new balance is #{balance}."

  elsif choice == "no"
	puts "How much would you like to deposit?"
	print prompt
	deposit = STDIN.gets.chomp()
	new_total = deposit.to_f + balance.to_f
    puts "Your new balance is #{balance}"
#...Withdrawal  
  elsif decision == "Withdrawal"
    puts "How much would you like to withdraw?"
    print prompt
    withdrawal = STDIN.gets.chomp()
		  
    puts "Confirm you would like to withdraw $#{withdrawal}"
    puts "yes or no"
    print prompt
    choice = STDIN.gets.chomp()
		  
    if choice == "yes"
	  new_balance = @balance.to_f - withdrawal.to_f
	  puts "You new balance is $#{new_balance}."
    elsif choice == "no"
      puts "How much would you like to withdraw?"
      print prompt
      deposit = STDIN.gets.chomp()
      new_balance = @balance.to_f - withdrawal.to_f
      puts "Your new balance is $#{new_balance}"
    end    	
  end      
end

#...Quick Cash
