require_relative "./test_helper"

class Q283MoveZerosTest < Minitest::Test
  include Q283MoveZeros

  def test_case_1
    nums = [0, 1, 0, 3, 12]
    move_zeros(nums)
    assert_equal [1, 3, 12, 0, 0], nums
  end

  def test_case_2
    nums = [0]
    move_zeros(nums)
    assert_equal [0], nums
  end
end
