require_relative "./test_helper"

class Q167TwoSum2Test < Minitest::Test
  include Q167TwoSum2

  def test_it_works
    numbers = [2,7,11,15]
    target = 9
    assert_equal [1,2], two_sum(numbers, target)
  end
end
