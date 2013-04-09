def log_in
#  count = 0 When you refractor this, add in a break for the pin
  prompt = "> "  

# First they will enter their pin. If it's wrong, they will have a chance to try again.
  puts "Please enter enter your pin."
  pinput = STDIN.gets.chomp()    
  if pinput.to_i == @pin.to_i
    self.choose_acc        
  else
    "Pin not recognized. Please try again."
    self.log_in
  end
end
