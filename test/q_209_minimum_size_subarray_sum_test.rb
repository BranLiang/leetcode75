require_relative "./test_helper"

class Q209MinimumSizeSubarraySumTest < Minitest::Test
  include Q209MinimumSizeSubarraySum

  def test_it_works
    nums = [2,3,1,2,4,3]
    target = 7
    assert_equal 2, min_sub_array_len(target, nums)

    # nums = [1,4,4]
    # target = 4
    # assert_equal 1, min_sub_array_len(target, nums)

    # nums = [1,1,1,1,1,1,1,1]
    # target = 11
    # assert_equal 0, min_sub_array_len(target, nums)
  end
end
