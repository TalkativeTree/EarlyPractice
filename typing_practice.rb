class SittingDucks

	def initialize filename
		@filename 			= filename
		@mortal_enemies = []
		@table_1 				= []
		@table_2 				= []
		@guest_list 		= []
		@guest   				= 0
	end

	def organize_lists
		file = File.open(@filename)		
		file.each {|line| @mortal_enemies << line.chomp.split(",")}	
		@guest_list = Hash.new
		@mortal_enemies.each_with_index{|guest, hates| @guest_list[hates] = guest }
		@table_1 << @guest_list.fetch(0)
	end
	
	def seat_enemies 
		organize_lists
		@guest_list.each_key { |key| 
			if @table_1.include?(key) && @table_2.include?(key) 
				return "You're gonna need an extra table" 
			elsif @table_1.include?((key).to_s)				
				@table_1.map { |guest| @table_2 << @guest_list.fetch(guest.to_i - 1) }
			elsif	@table_2.include?((key).to_s)				
				@table_2.map { |guest| @table_1 << @guest_list.fetch(guest.to_i - 1) }
			end	
		@table_2 = @table_2.flatten.uniq.sort
		@table_1 = @table_1.flatten.uniq.sort
		}

	end
end

		

seating_arrangement = SittingDucks.new("mortal_enemies.txt")
seating_arrangement.seat_enemies