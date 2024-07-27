require_relative "./test_helper"

class Q1TwoSumTest < Minitest::Test
  include Q1TwoSum

  def test_it_works
    nums = [2, 7, 11, 15]
    target = 9
    assert_equal [0, 1], two_sum(nums, target)

    nums = [3,2,4]
    target = 6
    assert_equal [1, 2], two_sum(nums, target)

    nums = [3, 3]
    target = 6
    assert_equal [0, 1], two_sum(nums, target)
  end
end
