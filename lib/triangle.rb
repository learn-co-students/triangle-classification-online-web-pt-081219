class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def is_valid?
    ((@side_1 + @side_2) > @side_3) && ((@side_3 + @side_2) > @side_1) && ((@side_1 + @side_3) > @side_2) && (@side_1 > 0) && (@side_2 > 0) && (@side_3 > 0)
  end
  
  def is_equilateral?
    @side_1 == @side_2 && @side_1 == @side_3
  end
  
  def is_isoceles?
    @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
  end
  
  
  def kind
    if is_valid?
      if is_equilateral?
        :equilateral
      elsif is_isoceles?
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    
  end
end
