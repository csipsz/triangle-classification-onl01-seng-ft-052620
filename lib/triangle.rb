
class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2 
    @side3 = side3
  end 
  
  def kind 
    if bad_for_a_triangle || impossible_sides 
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end 
    
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 != side2 && side2 != side3 && side3 != side1
      :scalene
    else 
      :isosceles
    end 
  end 
  
  def bad_for_a_triangle 
    side1 <= 0 || side2 <= 0 || side3 <= 0 
  end 
  
  def impossible_sides 
    side1 >= (side2 + side3) || side2 >= (side1 + side3) || side3 >= (side1 + side2)
  end 
  
  class TriangleError < StandardError 
    def message 
      puts "Yo, the sides should be bigger than 0 and one side cannot exceed the other two!"
    end 
  end 
end


hi = Triangle.new(0,0,0)
3.kind
