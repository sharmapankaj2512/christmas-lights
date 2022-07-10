require "test_helper"

module Christmas
  class Grid
    def initialize(length, breadth); end

    def on_count
      1
    end

    def off_count
      0
    end
  end

  class TestLightsOnByDefault < Minitest::Test
    def test_lights_on_by_default
      grid = Grid.new(1, 1)
      assert_equal 1, grid.on_count
      assert_equal 0, grid.off_count
    end
  end
end
