require "christmas/light"

module Christmas
  class Grid
    def initialize(size)
      @lights = Array.new(size) { Array.new(size) { Light.new } }
    end

    def turn_off_range(start, last)
      apply(start, last, :turn_off)
    end

    def turn_on_range(start, last)
      apply(start, last, :turn_on)
    end

    def toggle_range(start, last)
      apply(start, last, :toggle)
    end

    def apply(start, last, action)
      x1, y1 = start
      x2, y2 = last
      (x1..x2).each do |x|
        (y1..y2).map { |y| @lights[x][y] }
                .each(&action)
      end
    end

    def on_count
      @lights.flatten.count(&:on?)
    end

    def off_count
      @lights.flatten.count(&:off?)
    end
  end
end
