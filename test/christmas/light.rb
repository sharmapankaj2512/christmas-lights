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
end
