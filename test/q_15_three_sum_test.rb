require_relative "./test_helper"

class Q15ThreeSumTest < Minitest::Test
  include Q15ThreeSum

  def test_it_works
    nums = [-1,0,1,2,-1,-4]
    expected = [[-1,-1,2],[-1,0,1]]
    actual = three_sum(nums)
    assert_equal expected.length, actual.length
    expected.each do |v|
      actual.include?(v)
    end
  end
end
