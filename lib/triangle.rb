class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def kind 
    if (@a != 0 && @a > 0) && (@b != 0 && @b > 0) && (@c != 0 && @c > 0)
      if !(@a + @b > @c) || !(@a + @c > @b) || !(@b + @c > @a)
        raise TriangleError
      else
        if @a == @b && @a == @c
          kind = :equilateral
        elsif (@a == @b && @a != @c) || (@b == @c && @a != @b) || (@a == @c && @a != @b)
          kind = :isosceles
        elsif @a != @b && @a != @c
          kind = :scalene
        end
        kind
      end
    else
        raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    # def side_length_error
    #   puts "Your triangle must have a positive length on each side."
    # end
  end
end
