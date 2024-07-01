require_relative './test_helper'

# q_2336_smallest_number_in_infinite_set_test.rb
class Q2336SmallestNumberInInfiniteSetTest < Minitest::Test
  include Q2336SmallestNumberInInfiniteSet

  def test_case
    set = SmallestInfiniteSet.new
    set.add_back(2)
    assert_equal(1, set.pop_smallest)
    assert_equal(2, set.pop_smallest)
    assert_equal(3, set.pop_smallest)
    set.add_back(1)
    assert_equal(1, set.pop_smallest)
    assert_equal(4, set.pop_smallest)
    assert_equal(5, set.pop_smallest)
  end
end
