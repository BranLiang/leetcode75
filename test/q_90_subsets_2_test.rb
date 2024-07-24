require_relative "./test_helper"

class Q90Subsets2Test < Minitest::Test
  include Q90Subsets2

  def test_it_works
    nums = [1,2,2]
    expected = [
      [],
      [1],
      [1,2],
      [1,2,2],
      [2],
      [2,2]
    ]
    actual = subsets_with_dup(nums)
    assert_equal actual.size, expected.size
    expected.each do |e|
      assert_includes actual, e
    end

    nums = [0]
    expected = [[], [0]]
    actual = subsets_with_dup(nums)
    assert_equal actual.size, expected.size
    expected.each do |e|
      assert_includes actual, e
    end
  end
end
