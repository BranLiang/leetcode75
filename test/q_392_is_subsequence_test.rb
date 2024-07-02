require_relative "./test_helper"

class Q392IsSubsequenceTest < Minitest::Test
  include Q392IsSubsequence

  def test_case_1
    assert_equal true, is_subsequence("abc", "ahbgdc")
  end

  def test_case_2
    assert_equal false, is_subsequence("axc", "ahbgdc")
  end

  def test_case_3
    assert_equal false, is_subsequence("aaaaaa", "bbaaaa")
  end
end
