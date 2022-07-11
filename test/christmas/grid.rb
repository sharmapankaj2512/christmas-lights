require "christmas/light"

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

  class Grid
    def initialize(size)
      @lights = Array.new(size) { Array.new(size) { Light.new } }
    end

    def turn_off(range)
      apply(range, :turn_off)
    end

    def turn_on(range)
      apply(range, :turn_on)
    end

    def toggle(range)
      apply(range, :toggle)
    end

    def apply(range, action)
      range.points
           .map { |(x, y)| @lights[x][y] }
           .each(&action)
    end

    def on_count
      @lights.flatten.count(&:on?)
    end

    def off_count
      @lights.flatten.count(&:off?)
    end
  end
end
