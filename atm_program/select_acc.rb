  def log_in
  prompt = "> "  

# First they will enter their pin. If it's wrong, they will have a chance to try again.
    puts "Please enter enter your pin."
    pinput = STDIN.gets.chomp()    
    puts @pin
    puts pinput

#If their pin is correct, they will get to choose which account they want to use
    if pinput.to_i == @pin.to_i
      puts "Which account would you like to use?\n" + "...Checking\n" + "...Savings\n"
      print prompt
      open_acc = STDIN.gets.chomp()
        if open_acc == "Checking" then balance = check_bal
          elsif open_acc == "Savings" then balance = sav_bal
          else "Error"    
        end
      puts balance  
      puts "What would you like to do?"
     
      options = ["...Check Balance", "...Deposit", "...Withdraw", "...Quick Cash"]

      puts options
      print prompt
      decision = STDIN.gets.chomp()

#This is looping the program so the person can re-enter their password.
#I need to figure out how to limit the number of times it will loop.           
    else
      "Pin not recognized. Please try again."
      self.log_in

    end  
  end
end

first_name, last_name, acc_num, pin, check_bal, sav_bal = ARGV

acc_1234 = Account.new(first_name, last_name, acc_num, pin)
puts acc_1234
puts @pin
puts acc_1234.log_in