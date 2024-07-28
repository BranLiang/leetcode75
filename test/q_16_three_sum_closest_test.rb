require_relative "./test_helper"

class Q16ThreeSumClosestTest < Minitest::Test
  include Q16ThreeSumClosest

  def test_it_works
    nums = [-1,2,1,-4]
    target = 1
    assert_equal 2, three_sum_closest(nums, target)

    nums = [0,0,0]
    target = 1
    assert_equal 0, three_sum_closest(nums, target)
  end
end
