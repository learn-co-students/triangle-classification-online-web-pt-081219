class Triangle
  
  attr_reader :s_one, :s_two, :s_three
  
  def initialize(s_one, s_two, s_three)
      @s_one = s_one
      @s_two = s_two
      @s_three = s_three
  end 
  
  def kind 
    if (@s_one + @s_two <= @s_three) || (@s_two + @s_three <= @s_one) || (@s_three + @s_one <= @s_two) || @s_one <= 0 || @s_two <= 0 || @s_three <= 0
      raise TriangleError    
    
    elsif @s_one == @s_two && @s_two == @s_three 
      :equilateral 
    elsif @s_one == @s_two || @s_two == @s_three || @s_three == @s_one
      :isosceles
    else
      :scalene
    end 
  end 
  


  class TriangleError < StandardError
  end 
end 
