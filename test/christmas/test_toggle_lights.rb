require "test_helper"
require "christmas/grid"

module Christmas
  class TestToggleLights < Minitest::Test
    def test_toggle_lights
      grid = Grid.new(1)
      grid.toggle(Range2D.new([0, 0], [0, 0]))
      grid.toggle(Range2D.new([0, 0], [0, 0]))

      assert_equal 1, grid.on_count
      assert_equal 0, grid.off_count
    end

    def test_toggle_two_by_two
      grid = Grid.new(2)
      grid.toggle(Range2D.new([0, 1], [0, 1]))
      grid.toggle(Range2D.new([0, 1], [0, 1]))

      assert_equal 4, grid.on_count
      assert_equal 0, grid.off_count
    end

    def test_toggle_two_by_two_horizontal_line
      grid = Grid.new(2)
      grid.toggle(Range2D.new([0, 0], [1, 0]))

      assert_equal 2, grid.on_count
      assert_equal 2, grid.off_count
    end

    def test_toggle_two_by_two_vertical_line
      grid = Grid.new(2)
      grid.toggle(Range2D.new([0, 0], [0, 1]))

      assert_equal 2, grid.on_count
      assert_equal 2, grid.off_count
    end

    def test_toggle_two_by_two_square
      grid = Grid.new(2)
      grid.toggle(Range2D.new([0, 0], [1, 1]))

      assert_equal 0, grid.on_count
      assert_equal 4, grid.off_count
    end
  end
end
