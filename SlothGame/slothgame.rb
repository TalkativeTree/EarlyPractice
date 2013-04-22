$prompt = "> "
class InitializeSlothWars #the loading screen. What is called to begin playing the game
	def initialize
    puts "we defined #{$prompt}"
    puts "What's up? I'm your sloth overlord TalkativeTree. Think of me as that big sloth\n" +
				 "wearing sunglasses. I know you've seen it. If not, there's a thing called Google;\n" +
				 "use it."
		puts
		puts "Press [Enter] to continue.".center(80)
		gets 
		puts "Anyway, have you already been slotherized?"
		puts "Type [yes] or [no] to continue".center(80)
		print $prompt
		answer = STDIN.gets.chomp()
		if answer == "yes" || answer.downcase ==  "[yes]"
			load_sloth_wars
		elsif answer == "no" || answer.downcase == "[no]"
			create_sloth
		else
			puts "you get one more try. Typing yes and no isn't that hard :P"
			print prompt
			answer = STDIN.gets.chomp()
			if answer.downcase == "yes" || answer.downcase == "[yes]"
				load_sloth_wars
			else 
				create_sloth
			end
		end
	end #initialize
	
	def load_sloth_wars
		puts "What's the name of your sloth?"
		print $prompt
		answer = gets.chomp()
		@filename = answer + ".txt"		
		if File.file? @filename
	 		puts "Time for #{answer} to get their sloth on!"
#	 		Sloth.open(@filename)
		else
			respones = ["Your typing game needs work. Try again.", 
									"Bacon isn't case sensitive, but these inputs are. Try again.",
									"I know sloths have a hard tyme tiping. Try again.",
									"Have you really forgotten your sloth's name? You're better than this."]
			puts respones.sample
		end
		load_sloth_wars
	end #load_sloth_wars

	def create_sloth #what is called to create a new sloth/game
		puts
		puts "Hey there friend? Or should I say \"Hello their conspirator!\" Whatever it is you
		are in relation to my existence..."
		gets
		puts	"(I'm a program so does this mean we're in Tron, but instead of Jeff Bridges we\n" + 
					"have Jeff Goldblum and a giant man-eating sloth instead of a T-rex?)" 
		gets
		puts	"Welcome you to Sloth Wars!"

		puts 	"Unlike it's name, this isn't a violent game...yet. In this game you'll get to\n" +
					"birth a sloth and raise it as your own."
		gets
		puts 	"(hopefully not figuratively. We only talk in literals on this island" +          
					"{we're on an island? [is this Lost?]})" 
		gets
		puts 	"You of course have many options of raising a sloth with three toes or a sloth with" +
					"three toes."
		gets
		puts     "\"But TalkativeTree...I...I wanna raise a two-toed sloth :(\""
		gets
		puts  "I understand Billy, but all sloths have three toes. Two-toed sloths have two\n" +
					"fingers :P. Anyway, we're walking down a tangent."
		gets
		puts  "The only thing you need to know is that if at any point you need help. Use\n" +
					"Google. Or typing in \"Menu\". If you ever type in Menu, it will bring up a list\n" +
					"of things that you are able to do at that given point."
		gets
		puts  "Currently, this game is in development. I will add features as I get to them and\n" +
					"information as requested. For now, I want you to experiment and see what\n" +
					"happens. This is the most exciting point of a game, because no one has spoiled\n"
					"it for you. You get to be the person climbing Mount Killamanslothbro."
		gets	
		puts	"(that's Kill-a-man-Sloth-bro if you didn't catch that. See that was funny,
			(because I took Mt. Kilimanjaro...frack it.)"

		puts "IT\nIS\nTIME\nTO\nMAKE\nYOUR\nSLOTH\nBABY"
	  puts "Did you read that? Be honest"
	  print $prompt
	  input = STDIN.gets.chomp()
	  if input.include?("n") || input.include?("o")
	  	puts "Well here's a second chance.\n.\n.\n."
	  	puts create_sloth
		end
		birth
	end #create_sloth
	def birth 
		puts "You're going to start off with a baby sloth and it's you're job to raise it.\n" +
				 "You can either raise it to be peaceful, or a slow, ineffectual, fighting machine!\n" +
				 "To begin, what would you like to name your sloth?"
		print $prompt
		self.name = STDIN.gets.chomp()
		puts "#{@name} is a great name! How many toes you want your sloth to have"
		puts "(psst! Your sloth must have either 2 or 3 toes.)"
		print $prompt
		self.type = STDIN.gets.chomp()
		puts
#customizing your sloth	
		@two_toed_sloths 	= ["Linaeus' Two-toed Sloth",
											 	 "Hoffman's Two-toed Sloth"]
		@three_toed_sloths = ["Pygmy Three-toed Sloth", 
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
				print $prompt
				self.kind = @two_toed_sloths[STDIN.gets.chomp().to_i - 1] 
			elsif @type == "3" || @type.downcase == "three"
				puts "		\"Three of a kind always beats a pair.\" - President Gandhi" 
				puts "So what kind of 3 toed sloth do you want to be?\n\n"
				puts "Your options are:"
				@three_toed_sloths.each{|kind| puts (@three_toed_sloths.index(kind) + 1).to_s + " " + kind}	
				print $prompt
				self.kind = @three_toed_sloths[STDIN.gets.chomp().to_i - 1]
			else
				puts "Why you tryna be a joker? Sloths only have 2 or 3 fingers, 
							so they only understand the numbers. Try again, but put a single digit this time :P"

			end	
		end #while @kind == nil loop
		@new_string = "#{@name}\n" +
									"#{@type}\n" + 
									"#{@kind}\n"
		@filename = "/users/benjamin/practice-exercises/slothgame/characters/#{@name}.txt"
		File.open(@filename, 'w'){|f| f.write(@new_string)}
		puts File.read @filename
	end #birth
end	 #class SlothGame	

class Sloth
	attr_accessor :name, :kind, :type
	def initialize
	  $prompt = "> "
	  @character_details = []
	  	@name = nil
	  	@type = nil#2 or 3 toed sloth
	  	@kind = nil#type of 2 or 3 toed sloth
	  @character_stats   = 
			#status	
		@stomach = 10
		@lower_intestines = 0
		@awake = false
		@asleep = true
		@strength		#tied 
		@speed			#two_toed are faster than three toed
		@dexterity 	#dexterity tied to vertebrae
		@awareness
		@abilities 
	end #end initialize
	
	# def character_hash
	# 	file = File.open(@filename)		
	# 	file.each {|line| @character_details << line.chomp}	
	# 	@character_hash = Hash.new
	# 	@character_details.each_with_index{|guest, hates| @character_hash[hates] = guest; puts @character_hash.inspect }
	# 	puts @character_hash.inspect
	# 	puts @character_details.inspect
	# end
end	

InitializeSlothWars.new