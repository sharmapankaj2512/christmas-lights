require "test_helper"
require "christmas/grid"

module Christmas
  class TestLightsOnByDefault < Minitest::Test
    def test_lights_on_by_default
      grid = Grid.new(1, 1)
      assert_equal 1, grid.on_count
      assert_equal 0, grid.off_count
    end
  end
end
