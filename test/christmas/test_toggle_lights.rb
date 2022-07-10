require "test_helper"
require "christmas/grid"

module Christmas
  class TestToggleLights < Minitest::Test
    def test_toggle_lights
      grid = Grid.new(1)
      grid.toggle(0, 0)
      grid.toggle(0, 0)

      assert_equal 1, grid.on_count
      assert_equal 0, grid.off_count
    end
  end
end