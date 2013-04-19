class Array
  def pad!(min_size, value = nil)
		while self.length < min_size 
    	self << value
    end
  	self
  end
  
  def pad(min_size, value = nil)
  	puts self.clone.pad!(min_size, value)
  end
end

array = ["1", "2"]
puts array.pad(4, "3")
