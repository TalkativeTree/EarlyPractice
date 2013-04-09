class Account
  def initialize(first_name, last_name, acc_num, pin, check_bal, sav_bal)

    @first_name = first_name
    @last_name = last_name
    @acc_num = acc_num
    @pin = pin
    @check_bal = check_bal
    @sav_bal = sav_bal
    @balance = []
  end

#I want individuals to log into their account first 
  def log_in
    prompt = "> "
# First they will enter their pin.
    puts "Please enter enter your pin."
    pinput = STDIN.gets.chomp()    
    if pinput.to_i == @pin.to_i          
      puts "Correct!"
    else
      "Pin not recognized. Please try again."
      self.log_in #this loops the method if they enter the wrong pin. Need to limit.
    end
  end

#Choosing which account to use
  def choose_acc
    prompt = "> "
    puts "Which account would you like to use?\n" + "...Checking\n" + "...Savings\n"
    print prompt
    open_acc = STDIN.gets.chomp()
    if open_acc == "Checking" 
      @balance = @check_bal
  	elsif open_acc == "Savings" 
      @balance = @sav_bal
    else open_acc != "Checking" and open_acc != "Savings"
      puts "Error. Please Try Again"
      return self.choose_acc
    end
  end

  def atm_action #need to get it to print out only 2 decimal places.
  	prompt = "> "
#   Select Action   
    puts "What would you like to do?"
    options = ["...Check Balance", "...Deposit", "...Withdrawal"]
    puts options
    print prompt
    decision = STDIN.gets.chomp()
	
	#...Check Balance
	  if decision == "Check Balance" 
	    print "Your balance is currently #{@balance}"
	#...Deposit
	  elsif decision == "Deposit"
	    puts "How much are you depositing?"
	    print prompt
	    deposit = STDIN.gets.chomp()
		  
	    puts "Confirm you would like to deposit $#{deposit}"
	    print prompt
	    choice = STDIN.gets.chomp()
		  
	    if choice == "yes"
		    new_balance = deposit.to_f + @balance.to_f
		    puts "You new balance is $#{new_balance}."

	    elsif choice == "no"
	      puts "How much would you like to deposit?"
	      print prompt
	      deposit = STDIN.gets.chomp()
	      new_balance = deposit.to_f + @balance.to_f
        puts "Your new balance is #{new_balance}"
      end
    #...Withdrawal  
	  elsif decision == "Withdrawal"
	    puts "How much would you like to withdraw?"
	    print prompt
	    withdrawal = STDIN.gets.chomp()
		  
      if withdrawal.to_f > @balance.to_f
        puts "Your withdrawal request is greater than your balance. Please withdraw a maximum of $#{@balance}"
	      return self.atm_action
      end

      puts "Confirm you would like to withdraw $#{withdrawal}"
	    puts "yes or no"
	    print prompt
	    choice = STDIN.gets.chomp()
		  
	    if choice == "yes"
		    new_balance = @balance.to_f - withdrawal.to_f
		    puts "You new balance is $#{new_balance}. Please retrieve your money below."
	    elsif choice == "no"
	      puts "How much would you like to withdraw?"
	      print prompt
	      deposit = STDIN.gets.chomp()
	      new_balance = @balance.to_f - withdrawal.to_f
        puts "Your new balance is $#{new_balance}. Please retrieve your money below."
      end    	
	  end    
  end
  
  def atm_interaction
    puts self.log_in
    puts self.choose_acc
    puts self.atm_action
  end

end

first_name, last_name, acc_num, pin, check_bal, sav_bal = ARGV
atm_user = Account.new(first_name, last_name, acc_num, pin, check_bal, sav_bal)

puts atm_user.atm_interaction