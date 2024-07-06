require_relative "./test_helper"

class Q152MaximumProductSubarrayTest < Minitest::Test
  include Q152MaximumProductSubarray

  def test_case_1
    assert_equal 6, max_product([2, 3, -2, 4])
  end

  def test_case_2
    assert_equal 0, max_product([-2, 0, -1])
  end
end
