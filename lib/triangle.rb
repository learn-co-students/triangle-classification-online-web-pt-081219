class Triangle
  attr_accessor :length, :width, :height
  
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end
  
  def kind
    validate_triangle
    if length == width && width == height && height == length
      return :equilateral
    elsif length == width || width == height || height == length
      return :isosceles
    elsif length != width && width != height && height != length
      return :scalene
    end
  end
  
  def validate_triangle
    real_triangle = [(length + width > height), (length + height > width), (width + height > length)]
    [length, width, height].each do |side|
      real_triangle << false if side <= 0
      raise TriangleError if real_triangle.include?(false)
    end
  end
  
  class TriangleError < StandardError
  end
end
