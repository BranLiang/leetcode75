require_relative "./test_helper"

class Q219ContainsDuplicates2Test < Minitest::Test
  include Q219ContainsDuplicates2

  def test_it_works
    nums = [1,2,3,1]
    k = 3
    assert_equal true, contains_nearby_duplicate(nums, k)

    nums = [1,0,1,1]
    k = 1
    assert_equal true, contains_nearby_duplicate(nums, k)

    nums = [1,2,3,1,2,3]
    k = 2
    refute contains_nearby_duplicate(nums, k)
  end
end
