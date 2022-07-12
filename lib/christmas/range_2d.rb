module Christmas
  class Range2D
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

    def transform(action)
      points.map { |x, y| action.call(x, y) }
    end
  end
end
