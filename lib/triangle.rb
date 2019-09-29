class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if (@side1 <= 0) || (side2 <= 0) || (side3 <= 0)
      raise TriangleError
    elsif @side3 > (@side1 + @side2) && @side3.positive?
      raise TriangleError
    elsif @side2 > (@side1 + @side3) && @side2.positive?
      raise TriangleError
    elsif (@side1 + @side3) == @side2
      raise TriangleError
    elsif (@side1 + @side3) < @side2
      raise TriangleError
    elsif (@side2 + @side3) < @side1
      raise TriangleError
    end
  end

  def kind
    case 
    when (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
      :scalene
    when (@side1 == @side2) && (@side2 == @side3)
      :equilateral
    when (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
      :isosceles
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Nope, not a valid triangle!"
    end
  end
end