require_relative "./test_helper"

class Q259ThreeSumSmallerTest < Minitest::Test
  include Q259ThreeSumSmaller

  def test_it_works
    nums = [-2,0,1,3]
    target = 2
    assert_equal 2, three_sum_smaller(nums, target)
  end
end
