class Triangle
  # write code here
  attr_accessor :a , :b, :c
  def initialize(a, b, c)
    @a= a
    @b =b
    @c =c
  end
  def kind 
    if [a,b,c].min <=0 || (a+b<=c || a+c<=b || b+c<=a)
      raise TriangleError
    elsif a==b && c== b
       :equilateral
    elsif a==b || b==c || c==a  
       :isosceles
    else
        :scalene
    end
  end
    
  class TriangleError < StandardError
    # triangle error code
    
  end

  end

