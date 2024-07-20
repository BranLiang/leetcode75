require_relative "./test_helper"

class Q53MaximumSubarrayTest < Minitest::Test
  include Q53MaximumSubarray

  def test_it_works
    nums = [-2,1,-3,4,-1,2,1,-5,4]
    assert_equal 6, max_sub_array(nums)

    nums = [1]
    assert_equal 1, max_sub_array(nums)

    nums = [5,4,-1,7,8]
    assert_equal 23, max_sub_array(nums)
  end
end
