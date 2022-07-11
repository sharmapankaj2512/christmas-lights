require "christmas/light"

module Christmas
  class Grid
    def initialize(size)
      @lights = Array.new(size) { Array.new(size) { Light.new } }
    end

    def turn_off_range(start, last)
      x1, y1 = start
      x2, y2 = last
      (x1..x2).each { |x| (y1..y2).each { |y| @lights[x][y].turn_off } }
    end

    def turn_on_range(start, last)
      x1, y1 = start
      x2, y2 = last
      (x1..x2).each { |x| (y1..y2).each { |y| @lights[x][y].turn_on } }
    end

    def toggle_range(start, last)
      x1, y1 = start
      x2, y2 = last
      (x1..x2).each { |x| (y1..y2).each { |y| @lights[x][y].toggle } }
    end

    def on_count
      @lights.flatten.count(&:on?)
    end

    def off_count
      @lights.flatten.count(&:off?)
    end
  end
end
