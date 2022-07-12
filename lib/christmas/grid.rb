require "christmas/light"
require "christmas/range_2d"

module Christmas
  class Grid
    def initialize(size)
      @lights = Array.new(size) { Array.new(size) { Light.new } }
      @to_light = ->(x, y) { @lights[x][y] }
    end

    def turn_off(range)
      range.transform(@to_light).each(&:turn_off)
    end

    def turn_on(range)
      range.transform(@to_light).each(&:turn_on)
    end

    def toggle(range)
      range.transform(@to_light).each(&:toggle)
    end

    def on_count
      @lights.flatten.count(&:on?)
    end

    def off_count
      @lights.flatten.count(&:off?)
    end
  end
end
