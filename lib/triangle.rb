require 'pry'

class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initalize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2 
    @side3 = side3
  end 
  
  def kind 
  
  end 
  
  def bad_for_a_triangle 
    side1 <= 0 || side2 <= 0 || side3 <= 0 
  end 
  
  class TriangleError < StandardError 
  end 
end
