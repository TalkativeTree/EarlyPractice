#Write four instance methods for rectangle:

#area, which returns the area of the rectangle
#perimeter, which returns the perimeter of the rectangle
#diagonal, which returns the length of the rectangle's diagonal as a Float
#square?, which returns true if the rectangle is a square and false otherwise

class Rectangle
  attr_accessor :width, :height
  def initialize(width, height)
    @width = width
  	@height = height
  end
  

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
  
  def area
    @width.to_f * @height.to_f
  end
  
  def perimeter
  	2 * @width + 2 * @height
  end
  
  def diagonal
  	x = (@height**2 + width**2)
  	Math.sqrt(x)
  end
  
  def square?
  	@width == @height
  end
end	

test_rect = Rectangle.new(10,20)
puts test_rect.area
puts test_rect.perimeter
puts test_rect.diagonal
puts test_rect.square?