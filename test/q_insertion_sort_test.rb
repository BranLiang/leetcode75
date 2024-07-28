require_relative "./test_helper"

class QInsertionSortTest < Minitest::Test
  include QInsertionSort

  def test_it_works
    list = [2,3,4,1,6]
    assert_equal [1,2,3,4,6], sort(list)
  end
end
