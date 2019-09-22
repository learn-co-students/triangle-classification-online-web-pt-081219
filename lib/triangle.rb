class Triangle

  attr_accessor :a, :b, :c 

  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end 

  def kind  
    if ((a <= 0 || b <= 0 || c <= 0) || (a + b <= c || a + c <= b || c + b <= a))
      begin
        raise TriangleError 
      end
    else
      if a == b && b == c 
        :equilateral
      elsif a == b || a==c || b==c 
        :isosceles 
      else 
        :scalene
      end
    end
  end


class TriangleError < StandardError 
  def message 
    "This violates the triangle rules."
  end

end
end