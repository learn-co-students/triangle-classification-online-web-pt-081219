class Triangle
  attr_accessor :sides, :kind
  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1 
    @sides << side2 
    @sides << side3 
    
  end
  
  def is_valid?(array)
    
   
    return false if array.include?(0)
 
    sum_1 = array.first + array[1]
    sum_2 =  array[1] + array.last
    sum_3 = array.first + array.last 
    
    if (sum_1 <= array.last) || (sum_2 <= array.first)||(sum_3 <=  array[1] ) 
      false 
    else 
      true
    end
  
  end
  
  def kind
    raise TriangleError if !is_valid?(@sides) 
    
    counter = [] 
    @sides.each{|el| counter << @sides.count(el)} 
    
    if counter.include?(3 )
      :equilateral
      elsif counter.include?(2) 
      :isosceles 
    else 
      :scalene
    end
    
    
  end
  
    class TriangleError < StandardError
      
    end
  
end
