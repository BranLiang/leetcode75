require_relative "./test_helper"

class QMergeSortTest < Minitest::Test
  include QMergeSort

  def test_it_works
    arr = [3,2,4,1,6]
    assert_equal [1,2,3,4,6], sort(arr)
  end
end
