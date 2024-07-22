require_relative "./test_helper"

class Q560SubarraySumEqualsKTest < Minitest::Test
  include Q560SubarraySumEqualsK

  def test_it_works
    nums = [1,1,1]
    k = 2
    assert_equal 2, subarray_sum(nums, k)

    nums = [1,2,3]
    k = 3
    assert_equal 2, subarray_sum(nums, k)

    nums = [1]
    k = 0
    assert_equal 0, subarray_sum(nums, k)
  end
end
