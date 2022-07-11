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

    def off?
      @state.zero?
    end

    def on?
      !off?
    end

    def toggle
      on? ? turn_off : turn_on
    end
  end
end
