require "test_helper"
require "christmas/grid"

module Christmas
  class TestTurnLightsOn < Minitest::Test
    def test_lights_on
      grid = Grid.new(1)
      grid.turn_off(0, 0)
      grid.turn_on(0, 0)

      assert_equal 1, grid.on_count
      assert_equal 0, grid.off_count
    end

    def test_light_on_two_by_two
      grid = Grid.new(2)
      grid.turn_off(0, 1)
      grid.turn_on(0, 1)

      assert_equal 4, grid.on_count
      assert_equal 0, grid.off_count
    end
  end
end
