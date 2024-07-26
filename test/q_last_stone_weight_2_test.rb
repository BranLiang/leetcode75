require_relative "./test_helper"

class QLastStoneWeight2Test < Minitest::Test
  include QLastStoneWeight2

  def test_it_works
    stones = [2,7,4,1,8,1]
    assert_equal 1, last_stone_weight_ii(stones)

    stones = [31,26,33,21,40]
    assert_equal 5, last_stone_weight_ii(stones)
  end
end
