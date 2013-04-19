class OrangeTree
	def initialize stage
	@stage = stage
	@height = 0
	@age = 0 # He's full.
	@oranges = 0 # He doesn't need to go.

	end

	def measure_growth
		puts "You measure the height of your orange tree."
		puts "It is #{@height} feet tall."
		if @height < 5 
			puts "your tree is a sappling"
			@stage = "sappling"
		elsif @height >= 5 && @height < 10 
			puts "Your tree is a teenager. The juice might be a little sour and wear eye liner."
			@stage = "teengager"
		else
			puts "your tree is all grown up!"
			@stage = "adult"
		end
		season_passes
	end

	def pick_oranges
		if @oranges == 0
			puts "There are no oranges to harvest."
		else
			puts "You harvest #{@oranges} oranges."
		end
	end

	private

	def season_passes	
		@age = @age + 1
		@height = @height + 1
		@oranges = 0
		if @stage == "sappling"
			@oranges = 0
		elsif @stage == "teengager"
			@oranges = (@age + 1) * @height
		end
		if @stage == "adult"
			@oranges = (@age + 1) * @height
		end
	end
end

my_tree = OrangeTree.new("sappling")

puts my_tree.measure_growth
puts my_tree.measure_growth
puts my_tree.pick_oranges
puts my_tree.measure_growth
puts my_tree.measure_growth
puts my_tree.measure_growth
puts my_tree.pick_oranges
puts my_tree.measure_growth
