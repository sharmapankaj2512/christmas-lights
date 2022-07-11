require "christmas/light"
require "christmas/range_2d"

module Christmas
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
