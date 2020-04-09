class Triangle
    attr_accessor :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
      @side_1, @side_2, @side_3 = side_1, side_2, side_3
    end

    def illegal_triangle
      if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
        raise TriangleError, "size must be over 0."
      end
    end

    def kind(illegal_triangle)
      if @side_1 == @side_2 && @side_1 == @side_3
        return :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1
        return :isosceles
      else
        return :scalene
     
      end
    end

    

    class TriangleError < StandardError
    end

end
