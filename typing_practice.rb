	def init
		puts "What's up? I'm your sloth overlord TalkativeTree. Think of me as that big sloth wearing sunglasses. I know you've seen it. If not, there's a thing called Google;" +
				 "use it."
		puts
		puts "Press [Enter] to continue.".center(60)
		gets 
		puts "Anyway, have you already been slotherized?"
		puts "Type [yes] or [no] to continue".center(60)
		print "> "
		answer = STDIN.gets.chomp()
		if answer == "yes" || answer.downcase ==  "[yes]"
			puts :load_sloth_wars
		elsif answer == "no" || answer.downcase == "[no]"
			puts "create_sloth"
		else
			puts "you get one more try. Typing yes and no isn't that hard :P"
			print "> "
			answer = STDIN.gets.chomp()
			if answer.downcase == "yes" || answer.downcase == "[yes]"
				puts "load_sloth_wars"
			else 
				puts :create_sloth
			end
		end
	end

init