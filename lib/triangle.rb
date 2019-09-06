class Triangle
  attr_accessor :side_1, :side_2, :side_3
   
   
   def initialize(side_1, side_2, side_3)
     @side_1 = side_1
     @side_2 = side_2
     @side_3 = side_3
   end 
   
   def kind 
     valid? 
     if side_1 == side_2 && side_2 == side_3
         return :equilateral
     elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      return :isosceles
    else 
      return :scalene
    end 
  end 
     
     def valid?
    valid_traingle = [(side_1 + side_2 > side_3), (side_2 + side_3 > side_1), (side_1 + side_3 > side_2)]
    [side_1, side_2, side_3].each do |side|
      valid_traingle << false if side <=0
      raise TriangleError if valid_traingle.include?(false)
    end 
  end 

   
   class TriangleError < StandardError
     def message
       "This triangle is invalid!"
     end 
   end 
 end 