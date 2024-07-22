require_relative "./test_helper"

class Q287FindTheDuplicateNumberTest < Minitest::Test
  include Q287FindTheDuplicateNumber

  def test_it_works
    nums = [1,3,4,2,2]
    assert_equal 2, find_duplicate(nums)

    nums = [3,1,3,4,2]
    assert_equal 3, find_duplicate(nums)

    nums = [3,3,3,3,3]
    assert_equal 3, find_duplicate(nums)

    nums = [2,5,9,6,9,3,8,9,7,1]
    assert_equal 9, find_duplicate(nums)
  end
end
