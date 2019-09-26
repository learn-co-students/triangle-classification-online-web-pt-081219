class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      begin
        raise TriangleError
      end
    elsif side1 >= (side2+side3) || 
          side2 >= (side1+side3) || 
          side3 >= (side1+side2)
      begin 
        raise TriangleError
      end
    elsif side1 == side2 && side2 == side3
      @kind = :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      @kind = :isosceles 
    else
      @kind = :scalene 
    end
  end
  
  class TriangleError < StandardError
    def invalid_length_message
      "All side lengths must be positive!"
    end 
    
    def invalid_triangle_message
      "One of these side lengths is too long!"
    end 
  end
end
