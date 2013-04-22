puts "Are you already a sloth?"
puts "type: yes or no"
print "> "
new_game = gets.chomp()
while new_game.downcase != "yes" && new_game.downcase != "no"
	puts "Please only type out only yes or no."
	new_game = gets.chomp()
end

if new_game == "yes"
	puts "What'd you name your sloth?"
	sloth_name = STDIN.gets.chomp()
	puts "Go sloth stuff up #{sloth_name}!"
else
	Sloth.new
end
