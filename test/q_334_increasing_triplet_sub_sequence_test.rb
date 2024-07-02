require_relative "./test_helper"

class Q334IncreasingTripletSubSequenceTest < Minitest::Test
  include Q334IncreasingTripletSubSequence

  def test_case_1
    assert_equal true, increasing_triplet([1, 2, 3, 4, 5])
  end

  def test_case_2
    assert_equal false, increasing_triplet([5, 4, 3, 2, 1])
  end

  def test_case_3
    assert_equal true, increasing_triplet([2, 1, 5, 0, 4, 6])
  end

  def test_case_4
    assert_equal false, increasing_triplet([2,1,0,2,0,2,0,2,0,2,0,1])
  end
end
