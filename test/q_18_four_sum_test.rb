require_relative "./test_helper"

class Q18FourSumTest < Minitest::Test
  include Q18FourSum
  include CustomizedAssertions

  def test_it_works
    nums = [1,0,-1,0,-2,2]
    target = 0
    assert_array_equal [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]], four_sum(nums, target)
  end
end
