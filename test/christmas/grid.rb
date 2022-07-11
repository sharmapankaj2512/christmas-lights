module Christmas
  class Light
    def initialize
      @state = 1
    end

    def turn_off
      @state = 0
    end

    def turn_on
      @state = 1
    end

    def toggle
      if on?
        turn_off
      else
        turn_on
      end
    end

    def on?
      @state == 1
    end

    def off?
      @state == 0
    end
  end

  class Grid
    def initialize(size)
      @lights1 = Array.new(size) { Array.new(size) { Light.new } }
    end

    def turn_off_range(start, last)
      x1, y1 = start
      x2, y2 = last
      (x1..x2).each { |x| (y1..y2).each { |y| turn_off(x, y) } }
    end

    def turn_off(x, y)
      @lights1[x][y].turn_off
    end

    def turn_on_range(start, last)
      x1, y1 = start
      x2, y2 = last
      (x1..x2).each { |x| (y1..y2).each { |y| turn_on(x, y) } }
    end

    def turn_on(x, y)
      @lights1[x][y].turn_on
    end

    def toggle_range(start, last)
      x1, y1 = start
      x2, y2 = last
      (x1..x2).each { |x| (y1..y2).each { |y| toggle(x, y) } }
    end

    def toggle(x, y)
      @lights1[x][y].toggle
    end

    def on_count
      @lights1.flatten.count(&:on?)
    end

    def off_count
      @lights1.flatten.count(&:off?)
    end
  end
end
