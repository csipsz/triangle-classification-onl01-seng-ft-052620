=begin
class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initalize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2 
    @side3 = side3
  end 
  
  def kind 
    if bad_for_a_triangle || impossible_sides 
      raise TriangleError 
    end 
    
    if x == y && y == z && x == z
      :equilateral
    elsif x != y && y != z && z != x
      :scalene 
    else 
      :isosceles
    end 
  
  end 
  
  def bad_for_a_triangle 
    side1 <= 0 || side2 <= 0 || side3 <= 0 
  end 
  
  def impossible_sides 
    side1 > (side2 + side3) || side2 > (side1 + side3) || side3 > (side1 + side2)
  end 
  
  class TriangleError < StandardError 
  end 
end

=end 

class Triangle
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if kosher_triangle == true && kosher_triangle2 == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if x == y && y == z && x == z
      :equilateral
    elsif x != y && y != z && z != x
      :scalene 
    else 
      :isosceles
    end 
  end
  
  def kosher_triangle 
    x.positive? && y.positive? && z.positive?
  end 
  
  def kosher_triangle2 
    x + y > z && x + z > y && y + z > x
  end 
end

class TriangleError < StandardError
  
end

a = Triangle.new(5, 5, 5)
a.kind
