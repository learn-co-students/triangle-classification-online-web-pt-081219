class Triangle
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
      elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3) 
        :equilateral #only needs three equal sides so if two sides equal third automatically does in order to connect.
        elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles #only needs two equal sides
        elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene #no equal sides
        end
      end
    end 
  end
 

class TriangleError < StandardError
  def message
    "This is not a valid triangle."
  end
end



