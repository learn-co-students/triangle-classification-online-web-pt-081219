# class Triangle
#   attr_accessor :equilateral, :isosceles, :scalene
#   def initialize
#   end 
#   # write code here
#   # class TriangleError < StandardError
#   # end
# end
class Triangle
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind()
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end

  end
def illegal 
  if (s_1 == 0 || s_2 == 0 || s_3 == 0) || (s_1 < 0 || s_2 < 0 ||s_3 < 0) || (s_1 + s_2 <= s_3 || s_2 + s_3 <= s_1 || s_1 + s_3 <= s_2 )  
    raise TriangleError 

else 
true 
end 
end
class TriangleError < StandardError
  # triangle error code
end
end
# class Triangle
#   attr_accessor :x, :y, :z
#   def initialize(x, y, z)
#     @x = x
#     @y = y
#     @z = z
#   end

#   def kind
#     if kosher_triangle == true && kosher_triangle2 == true 
#       puts true 
#     else 
#       raise TriangleError 
#     end 
    
#     if x == y && y == z && x == z
#       :equilateral
#     elsif x != y && y != z && z != x
#       :scalene 
#     else 
#       :isosceles
#     end 
#   end
  
#   def kosher_triangle 
#     x.positive? && y.positive? && z.positive?
#   end 
  
#   def kosher_triangle2 
#     x + y > z && x + z > y && y + z > x
#   end 
# end

# class TriangleError < StandardError
  
# end

# a = Triangle.new(5, 5, 5)
# a.kind
# class Triangle
# attr_accessor :side1, :side2, :side3
#   @sides = []

#   def initialize(side1, side2, side3)
#     @side1, @side2, @side3 = side1, side2, side3
#     @sides = [side1, side2, side3]
#   end

#   def kind
#     if(negative? == true || valid? == false)
#       raise TriangleError
#     elsif(equilateral?)
#       :equilateral
#     elsif(scalene?)
#       :scalene
#     elsif(isosceles?)
#       :isosceles
#     end
#   end

#   def negative?
#     @sides.each do |length|
#       if(length <= 0)
#         return true
#       end
#     end
#   end

#   def equilateral?
#     (@side1 == @side2) && (@side1 == @side3)
#   end

#   def scalene?
#     (@side1 != @side2) && (@side1!= @side3) && (@side2 != @side3)
#   end

#   def isosceles?
#     (@side2 == @side3) || (@side1 == @side2) || (@side1 = @side3)
#   end

#   def valid?
#     (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
#   end

# end

# class TriangleError < StandardError

# end

