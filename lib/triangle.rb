class Triangle
  attr_accessor :side_1_length, :side_2_length, :side_3_length
  
  def initialize(side_1_length, side_2_length, side_3_length)
    @side_3_length = side_3_length
    @side_2_length = side_2_length
    @side_1_length = side_1_length
  end 
  
  def kind 
    if side_1_length + side_2_length <= side_3_length || side_3_length + side_2_length <= side_1_length || side_1_length + side_3_length <= side_2_length || side_1_length <= 0 || side_2_length <= 0 || side_3_length <=0
      raise TriangleError
    elsif side_1_length == side_2_length && side_1_length == side_3_length
      return :equilateral
    elsif side_1_length == side_2_length || side_2_length == side_3_length || side_1_length == side_3_length
      return :isosceles
    elsif side_1_length != side_2_length && side_1_length != side_3_length && side_2_length != side_3_length
      return :scalene
    end 
  end 
  
  class TriangleError < StandardError
  end 
  
end
