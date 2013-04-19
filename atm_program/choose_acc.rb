def choose_acc
  puts "Which account would you like to use?\n" + "...Checking\n" + "...Savings\n"
  print prompt
  open_acc = STDIN.gets.chomp()
  if open_acc == "Checking" 
  	balance = check_bal
  elsif open_acc == "Savings" 
  	balance = sav_bal
  else "Error"    
  end
end