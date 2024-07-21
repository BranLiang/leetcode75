require_relative "./test_helper"

class Q1343NumberOfSubArraysOfSizeKTest < Minitest::Test
  include Q1343NumberOfSubArraysOfSizeK

  def test_it_works
    arr = [2,2,2,2,5,5,5,8]
    k = 3
    threshold = 4
    assert_equal 3, num_of_subarrays(arr, k, threshold)

    arr = [11,13,17,23,29,31,7,5,2,3]
    k = 3
    threshold = 5
    assert_equal 6, num_of_subarrays(arr, k, threshold)
  end
end
