require_relative "./test_helper"

class Q918MaximumSumCircularSubarrayTest < Minitest::Test
  include Q918MaximumSumCircularSubarray

  def test_it_works
    nums = [1,-2,3,-2]
    assert_equal 3, max_subarray_sum_circular(nums)

    nums = [5,-3,5]
    assert_equal 10, max_subarray_sum_circular(nums)

    nums = [-3,-2,-3]
    assert_equal(-2, max_subarray_sum_circular(nums))
  end
end
