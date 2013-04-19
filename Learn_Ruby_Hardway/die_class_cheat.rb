class Die

	def initialize
		roll
	end

  def roll
  	puts "Hey guy, what's your name?"
  	@roller = gets.chomp
  	if @roller != "Ben Angel"
  		if @roller == ""
  			@roller = "stranger"
  		end	
  		puts "well #{@roller}, good luck. You'll need it hehe."
  		@number_showing = 1 + rand(6)
  	else 
  		puts "psst, buddy what side do you want?"
  		@cheat = gets.chomp
  		if @cheat.to_f > 6 || @cheat.to_f < 1
  			puts "they'll know you're cheating if you get a number the die can't roll. Give me a number between 1 and 6"
  		  gets.chomp
  		end	
  		@number_showing = @cheat.to_i
  	end
  	@number_showing 
  end

  def showing
  	@number_showing
  end
end