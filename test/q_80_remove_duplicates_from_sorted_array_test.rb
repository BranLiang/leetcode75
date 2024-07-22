require_relative "./test_helper"

class Q80RemoveDuplicatesFromSortedArrayTest < Minitest::Test
  include Q80RemoveDuplicatesFromSortedArray

  def test_it_works
    nums = [1,1,1,2,2,3]
    assert_equal 5, remove_duplicates(nums)

    nums = [0,0,1,1,1,1,2,3,3]
    assert_equal 7, remove_duplicates(nums)
  end
end
