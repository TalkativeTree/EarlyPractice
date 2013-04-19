
	puts "HI SONNY. WHAT DO YOU WANT?"

while true
	question = gets.chomp()
	year = 1930 + rand(70)
	if question == "BYE BYE BYE"
	  puts "OK GOODBYE SWEET HEART"
	  break 
	elsif question != question.upcase
		puts "HUH? SPEAK UP SONNY!"
	elsif question == "BYE" ||	question == "BYE BYE"
		topics = ["YOUR GIRLFRIEND", "SCHOOL", "MOTHER"]	
		puts "HOW IS YOUR #{topics.sample} DOING"
	else question == question.upcase
		puts ["NO, NOT SINCE #{year}.", "THAT'S NICE DEARY", "YOU'RE SUCH A SWEET BOY."].sample
	end
end