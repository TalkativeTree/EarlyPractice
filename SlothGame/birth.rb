def birth 
	prompt = "> "
	puts "Thank you for playing Sloth Wars! This game is like tomogothci meets pokemon."
	puts	"You're going to start off with a baby sloth and it's you're job to raise it." 
				"You can either raise it to be peaceful, or to be a slow, ineffectual, fighting machine!"
				"To begin, what would you like to name your sloth?"
	print prompt
	@name = STDIN.gets.chomp()
	puts "#{@name} is a great name! How many toes you want your sloth to have"
	puts "(psst! Your sloth must have either 2 or 3 toes.)"
	print prompt
	@type = STDIN.gets.chomp()
	puts
#customizing your sloth	
	@two_toed_sloths 	= ["Linaeus' Two-toed Sloth",
											 "Hoffman's Two-toed Sloth"]
	@three_toed_sloths = [
		"Pygmy Three-toed Sloth", 
		"Maned Three-toed Sloth",
		"Pale-throated Three-toed Sloth", 
		"Brown-throated Three-toed Sloth"] 
	while @kind == nil
		if @type	== "2" || @type.downcase == "two"
			puts "\"I got two toes so dey call me Two-toez.\" - lil SLOWth\n\n" 
			puts "Well actually lil SLOWth, they have three toes and two fingers."
			puts "So what kind of 2 toed sloth do you want to be?\n\n"
			puts "Your options are:" 
			@two_toed_sloths.each{|kind| puts (@two_toed_sloths.index(kind)+1).to_s + " " + kind}
			print prompt
			@kind = @two_toed_sloths[STDIN.gets.chomp().to_i - 1] 
		elsif @type == "3" || @type.downcase == "three"
			puts "\"Three of a kind always beats a pair.\" - President Gandhi" 
			puts "So what kind of 3 toed sloth do you want to be?\n\n"
			puts "Your options are:"
			@three_toed_sloths.each{|kind| puts (@three_toed_sloths.index(kind) + 1).to_s + " " + kind}	
			print prompt
			@kind = @three_toed_sloths[STDIN.gets.chomp().to_i - 1]
		else
			puts "why you tryna be a joker? Sloths only have 2 or 3 fingers, 
						so they only understand the numbers. Try again, but put a single digit this time :P"
		end	
	end # end kind loop


	puts "this works 47"    
		File.open("#{@name}.txt", 'w'){|f| f.write(
			"name = @name\n" + 
			"type = @type\n" +
			"kind = @kind\n"
			)}
end

birth