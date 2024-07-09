require_relative "./test_helper"

class Q307RangeSumQueryMutableTest < Minitest::Test
  include Q307RangeSumQueryMutable

  def test_case_1
    nums = [1, 3, 5]
    array = NumArray.new(nums)
    assert_equal 9, array.sum_range(0, 2)
    array.update(1, 2)
    assert_equal 8, array.sum_range(0, 2)
  end
end
