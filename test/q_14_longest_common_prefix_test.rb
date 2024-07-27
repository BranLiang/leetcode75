require_relative "./test_helper"

class Q14LongestCommonPrefixTest < Minitest::Test
  include Q14LongestCommonPrefix

  def test_it_works
    strs = ["flower","flow","flight"]
    assert_equal "fl", longest_common_prefix(strs)

    strs = ["dog","racecar","car"]
    assert_equal "", longest_common_prefix(strs)
  end
end
