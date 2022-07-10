require "test_helper"
require "christmas/grid"

module Christmas
  class TestLightsOnByDefault < Minitest::Test
    [
      [1, 1, 0],
      [2, 4, 0]
    ].each do |data|
      size = data[0]
      expected_on_count = data[1]
      expected_off_count = data[2]

      define_method("test_lights_on_by_default #{size}, #{expected_on_count}, #{expected_off_count}") do
        grid = Grid.new(size)
        assert_equal expected_on_count, grid.on_count
        assert_equal expected_off_count, grid.off_count
      end
    end
  end
end
