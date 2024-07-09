require_relative "./test_helper"

class Q684RedundentConnectionTest < Minitest::Test
  include Q684RedundentConnection

  def test_case_1
    assert_equal [2, 3], find_redundent_connection([[1,2],[1,3],[2,3]])
  end

  def test_case_2
    assert_equal [1, 4], find_redundent_connection([[1,2],[2,3],[3,4],[1,4],[1,5]])
  end
end
