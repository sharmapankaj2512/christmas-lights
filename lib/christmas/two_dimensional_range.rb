module Christmas
  class TwoDimensionalRange
    def initialize(start, finish)
      @x1 = start[0]
      @y1 = start[1]
      @x2 = finish[0]
      @y2 = finish[1]
    end

    def points
      xs = *(@x1..@x2)
      ys = *(@y1..@y2)
      xs.product ys
    end
  end
end
