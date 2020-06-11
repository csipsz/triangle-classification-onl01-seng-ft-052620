class Triangle
  
  attr_accessor :side1,:side2, :side3
  
  def initalize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2 
    @side3 = side3
  end 
  
  def kind 
    if side1 != side2 && side2 != side3 
      :scalene 
    elsif side1 == side2 && side2 == side3
    :equileteral 
    else 
      :scalene
    end 
  end 
  
  class TriangleError < StandardError 
  end 
end
