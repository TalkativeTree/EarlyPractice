table_of_contents = [["Chapter 1", "page", "1"],["Chapter 2", "page", "13"], 
										["Chapter 3", "page", "25"], ["Chapter 4", "page", "32"]]
table_width = 40
puts table_of_contents.map{ |c, j, k| 
	c.ljust(table_width * 5/8) + 
	j.ljust(table_width/8) + 
	k.ljust(table_width/4)
	}