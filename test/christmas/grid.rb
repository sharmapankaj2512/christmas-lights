module Christmas
  class Grid
    def initialize(length, breadth)
      @lights = Array.new(length) { Array.new(breadth) { 1 } }
    end

    def turn_off(x, y)
      @lights[x][y] = 0
    end

    def on_count
      @lights.flatten.count { |light| light == 1 }
    end

    def off_count
      @lights.flatten.count { |light| light == 0 }
    end
  end
end
