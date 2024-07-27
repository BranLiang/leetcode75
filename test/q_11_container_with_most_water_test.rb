require_relative "./test_helper"

class Q11ContainerWithMostWaterTest < Minitest::Test
  include Q11ContainerWithMostWater

  def test_it_works
    height = [1,8,6,2,5,4,8,3,7]
    assert_equal 49, max_area(height)

    height = [1,1]
    assert_equal 1, max_area(height)
  end
end
