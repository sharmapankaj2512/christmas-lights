module Christmas
  class Grid
    def initialize(size)
      @lights = Array.new(size) { Array.new(size) { 1 } }
    end

    def turn_off_range(start, last)
      x1, y1 = start
      x2, y2 = last
      (x1..x2).each { |x| (y1..y2).each { |y| turn_off(x, y) } }
    end

    def turn_off(x, y)
      @lights[x][y] = 0
    end

    def turn_on(x, y)
      @lights[x][y] = 1
    end

    def toggle(x, y)
      if on?(@lights[x][y])
        turn_off(x, y)
      else
        turn_on(x, y)
      end
    end

    def on_count
      @lights.flatten.count { |light| on?(light) }
    end

    def off_count
      @lights.flatten.count { |light| off?(light) }
    end

    def on?(light)
      light == 1
    end

    def off?(light)
      light == 0
    end
  end
end
